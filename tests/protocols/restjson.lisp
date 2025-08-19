(uiop/package:define-package #:pira/tests/protocols/restjson
                             (:use #:pira/tests/shared-types)
                             (:export #:all-query-string-types
                              #:all-query-string-types-input
                              #:client-optional-defaults
                              #:complex-nested-error-data
                              #:constant-and-variable-query-string
                              #:constant-and-variable-query-string-input
                              #:constant-query-string
                              #:constant-query-string-input
                              #:content-type-parameters #:datetime-offsets
                              #:datetime-offsets-output #:defaults
                              #:defaults-mixin #:dense-boolean-map
                              #:dense-number-map #:dense-set-map
                              #:dense-string-map #:dense-struct-map #:dialog
                              #:dialog-list #:dialog-map #:document
                              #:document-type #:document-type-as-map-value
                              #:document-type-as-map-value-input-output
                              #:document-type-as-payload
                              #:document-type-as-payload-input-output
                              #:document-type-input-output
                              #:document-valued-map
                              #:empty-input-and-empty-output
                              #:endpoint-operation
                              #:endpoint-with-host-label-operation
                              #:enum-payload-input #:farewell
                              #:finite-streaming-blob #:fractional-seconds
                              #:fractional-seconds-output
                              #:greeting-with-errors
                              #:greeting-with-errors-output #:host-label-input
                              #:host-with-path-operation
                              #:http-checksum-required
                              #:http-checksum-required-input-output
                              #:http-empty-prefix-headers #:http-enum-payload
                              #:http-payload-traits
                              #:http-payload-traits-input-output
                              #:http-payload-traits-with-media-type
                              #:http-payload-traits-with-media-type-input-output
                              #:http-payload-with-structure
                              #:http-payload-with-structure-input-output
                              #:http-payload-with-union
                              #:http-payload-with-union-input-output
                              #:http-prefix-headers
                              #:http-prefix-headers-in-response
                              #:http-request-with-float-labels
                              #:http-request-with-float-labels-input
                              #:http-request-with-greedy-label-in-path
                              #:http-request-with-greedy-label-in-path-input
                              #:http-request-with-labels
                              #:http-request-with-labels-and-timestamp-format
                              #:http-request-with-labels-and-timestamp-format-input
                              #:http-request-with-labels-input
                              #:http-request-with-regex-literal
                              #:http-request-with-regex-literal-input
                              #:http-response-code #:http-response-code-output
                              #:http-string-payload
                              #:ignore-query-params-in-response
                              #:ignore-query-params-in-response-output
                              #:input-and-output-with-headers
                              #:input-and-output-with-headers-io #:json-blobs
                              #:json-blobs-input-output #:json-enums
                              #:json-enums-input-output #:json-header-string
                              #:json-int-enums #:json-int-enums-input-output
                              #:json-lists #:json-lists-input-output
                              #:json-maps #:json-maps-input-output
                              #:json-timestamps #:json-timestamps-input-output
                              #:json-unions #:json-value
                              #:malformed-accept-with-body
                              #:malformed-accept-with-generic-string
                              #:malformed-accept-with-generic-string-output
                              #:malformed-accept-with-payload
                              #:malformed-accept-with-payload-output
                              #:malformed-blob #:malformed-blob-input
                              #:malformed-boolean #:malformed-boolean-input
                              #:malformed-byte #:malformed-byte-input
                              #:malformed-content-type-with-body
                              #:malformed-content-type-with-generic-string
                              #:malformed-content-type-with-generic-string-input
                              #:malformed-content-type-with-payload
                              #:malformed-content-type-with-payload-input
                              #:malformed-content-type-without-body
                              #:malformed-content-type-without-body-empty-input
                              #:malformed-content-type-without-body-empty-input-input
                              #:malformed-double #:malformed-double-input
                              #:malformed-float #:malformed-float-input
                              #:malformed-integer #:malformed-integer-input
                              #:malformed-list #:malformed-list-input
                              #:malformed-long #:malformed-long-input
                              #:malformed-map #:malformed-map-input
                              #:malformed-request-body
                              #:malformed-request-body-input #:malformed-short
                              #:malformed-short-input #:malformed-string
                              #:malformed-string-input
                              #:malformed-timestamp-body-date-time
                              #:malformed-timestamp-body-date-time-input
                              #:malformed-timestamp-body-default
                              #:malformed-timestamp-body-default-input
                              #:malformed-timestamp-body-http-date
                              #:malformed-timestamp-body-http-date-input
                              #:malformed-timestamp-header-date-time
                              #:malformed-timestamp-header-date-time-input
                              #:malformed-timestamp-header-default
                              #:malformed-timestamp-header-default-input
                              #:malformed-timestamp-header-epoch
                              #:malformed-timestamp-header-epoch-input
                              #:malformed-timestamp-path-default
                              #:malformed-timestamp-path-default-input
                              #:malformed-timestamp-path-epoch
                              #:malformed-timestamp-path-epoch-input
                              #:malformed-timestamp-path-http-date
                              #:malformed-timestamp-path-http-date-input
                              #:malformed-timestamp-query-default
                              #:malformed-timestamp-query-default-input
                              #:malformed-timestamp-query-epoch
                              #:malformed-timestamp-query-epoch-input
                              #:malformed-timestamp-query-http-date
                              #:malformed-timestamp-query-http-date-input
                              #:malformed-union #:malformed-union-input
                              #:media-type-header #:media-type-header-input
                              #:media-type-header-output #:my-union
                              #:nested-defaults-mixin #:nested-payload
                              #:no-input-and-no-output #:no-input-and-output
                              #:null-and-empty-headers-client
                              #:null-and-empty-headers-io
                              #:null-and-empty-headers-server
                              #:omits-null-serializes-empty-string
                              #:omits-null-serializes-empty-string-input
                              #:omits-serializing-empty-lists
                              #:omits-serializing-empty-lists-input
                              #:operation-with-defaults
                              #:operation-with-nested-structure
                              #:payload-config #:player-action
                              #:post-player-action #:post-union-with-json-name
                              #:put-with-content-encoding
                              #:query-idempotency-token-auto-fill
                              #:query-idempotency-token-auto-fill-input
                              #:query-params-as-string-list-map
                              #:query-params-as-string-list-map-input
                              #:query-precedence #:query-precedence-input
                              #:recursive-shapes
                              #:recursive-shapes-input-output
                              #:recursive-shapes-input-output-nested1
                              #:recursive-shapes-input-output-nested2
                              #:response-code-http-fallback
                              #:response-code-http-fallback-input-output
                              #:response-code-required #:rest-json
                              #:simple-list #:simple-map
                              #:simple-scalar-properties
                              #:simple-scalar-properties-input-output
                              #:simple-union #:sparse-boolean-map
                              #:sparse-json-lists
                              #:sparse-json-lists-input-output
                              #:sparse-json-maps
                              #:sparse-json-maps-input-output
                              #:sparse-number-map #:sparse-set-map
                              #:sparse-struct-map #:streaming-blob
                              #:streaming-text-plain-blob #:streaming-traits
                              #:streaming-traits-input-output
                              #:streaming-traits-require-length
                              #:streaming-traits-with-media-type
                              #:streaming-traits-with-media-type-input-output
                              #:string-enum #:string-payload-input
                              #:structure-list #:structure-list-member
                              #:test-body-structure
                              #:test-body-structure-input-output #:test-config
                              #:test-enum #:test-get-no-input-no-payload
                              #:test-get-no-payload #:test-int-enum
                              #:test-no-payload-input-output
                              #:test-payload-blob
                              #:test-payload-blob-input-output
                              #:test-payload-structure
                              #:test-payload-structure-input-output
                              #:test-post-no-input-no-payload
                              #:test-post-no-payload #:test-string-list
                              #:test-string-map #:timestamp-format-headers
                              #:timestamp-format-headers-io #:top-level
                              #:union-input-output #:union-payload
                              #:union-with-json-name #:unit-input-and-output))
(common-lisp:in-package #:pira/tests/protocols/restjson)

(smithy/sdk/service:define-service rest-json :shape-name "RestJson" :version
                                   "2019-12-16" :title
                                   "Sample Rest Json Protocol Service"
                                   :operations
                                   '(all-query-string-types
                                     constant-and-variable-query-string
                                     constant-query-string
                                     content-type-parameters datetime-offsets
                                     document-type document-type-as-map-value
                                     document-type-as-payload
                                     empty-input-and-empty-output
                                     endpoint-operation
                                     endpoint-with-host-label-operation
                                     fractional-seconds greeting-with-errors
                                     host-with-path-operation
                                     http-checksum-required
                                     http-empty-prefix-headers
                                     http-enum-payload http-payload-traits
                                     http-payload-traits-with-media-type
                                     http-payload-with-structure
                                     http-payload-with-union
                                     http-prefix-headers
                                     http-prefix-headers-in-response
                                     http-request-with-float-labels
                                     http-request-with-greedy-label-in-path
                                     http-request-with-labels
                                     http-request-with-labels-and-timestamp-format
                                     http-request-with-regex-literal
                                     http-response-code http-string-payload
                                     ignore-query-params-in-response
                                     input-and-output-with-headers json-blobs
                                     json-enums json-int-enums json-lists
                                     json-maps json-timestamps json-unions
                                     malformed-accept-with-body
                                     malformed-accept-with-generic-string
                                     malformed-accept-with-payload
                                     malformed-blob malformed-boolean
                                     malformed-byte
                                     malformed-content-type-with-body
                                     malformed-content-type-with-generic-string
                                     malformed-content-type-without-body
                                     malformed-content-type-without-body-empty-input
                                     malformed-content-type-with-payload
                                     malformed-double malformed-float
                                     malformed-integer malformed-list
                                     malformed-long malformed-map
                                     malformed-request-body malformed-short
                                     malformed-string
                                     malformed-timestamp-body-date-time
                                     malformed-timestamp-body-default
                                     malformed-timestamp-body-http-date
                                     malformed-timestamp-header-date-time
                                     malformed-timestamp-header-default
                                     malformed-timestamp-header-epoch
                                     malformed-timestamp-path-default
                                     malformed-timestamp-path-epoch
                                     malformed-timestamp-path-http-date
                                     malformed-timestamp-query-default
                                     malformed-timestamp-query-epoch
                                     malformed-timestamp-query-http-date
                                     malformed-union media-type-header
                                     no-input-and-no-output no-input-and-output
                                     null-and-empty-headers-client
                                     null-and-empty-headers-server
                                     omits-null-serializes-empty-string
                                     omits-serializing-empty-lists
                                     operation-with-defaults
                                     operation-with-nested-structure
                                     post-player-action
                                     post-union-with-json-name
                                     put-with-content-encoding
                                     query-idempotency-token-auto-fill
                                     query-params-as-string-list-map
                                     query-precedence recursive-shapes
                                     response-code-http-fallback
                                     response-code-required
                                     simple-scalar-properties sparse-json-lists
                                     sparse-json-maps streaming-traits
                                     streaming-traits-require-length
                                     streaming-traits-with-media-type
                                     test-body-structure
                                     test-get-no-input-no-payload
                                     test-get-no-payload test-payload-blob
                                     test-payload-structure
                                     test-post-no-input-no-payload
                                     test-post-no-payload
                                     timestamp-format-headers
                                     unit-input-and-output)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Rest Json Protocol"))
                                     ("aws.auth#sigv4" ("name" . "restjson"))
                                     ("aws.protocols#restJson1")))

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
                                 (query-params-map-of-string-list :target-type
                                  string-list-map :member-name
                                  "queryParamsMapOfStringList"
                                  :http-query-params common-lisp:t))
                                (:shape-name "AllQueryStringTypesInput"))

(smithy/sdk/shapes:define-structure client-optional-defaults common-lisp:nil
                                    ((member :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "member"))
                                    (:shape-name "ClientOptionalDefaults"))

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
                                      :member-name "Foo" :json-name "Fooooo"))
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

(smithy/sdk/shapes:define-structure defaults (defaults-mixin) common-lisp:nil
                                    (:shape-name "Defaults"))

(smithy/sdk/shapes:define-structure defaults-mixin common-lisp:nil
                                    ((default-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultString")
                                     (default-boolean :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "defaultBoolean")
                                     (default-list :target-type
                                      test-string-list :member-name
                                      "defaultList")
                                     (default-document-map :target-type
                                      document :member-name
                                      "defaultDocumentMap")
                                     (default-document-string :target-type
                                      document :member-name
                                      "defaultDocumentString")
                                     (default-document-boolean :target-type
                                      document :member-name
                                      "defaultDocumentBoolean")
                                     (default-document-list :target-type
                                      document :member-name
                                      "defaultDocumentList")
                                     (default-null-document :target-type
                                      document :member-name
                                      "defaultNullDocument")
                                     (default-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "defaultTimestamp")
                                     (default-blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "defaultBlob")
                                     (default-byte :target-type
                                      smithy/sdk/smithy-types:byte :member-name
                                      "defaultByte")
                                     (default-short :target-type
                                      smithy/sdk/smithy-types:short
                                      :member-name "defaultShort")
                                     (default-integer :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "defaultInteger")
                                     (default-long :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "defaultLong")
                                     (default-float :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "defaultFloat")
                                     (default-double :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "defaultDouble")
                                     (default-map :target-type test-string-map
                                      :member-name "defaultMap")
                                     (default-enum :target-type test-enum
                                      :member-name "defaultEnum")
                                     (default-int-enum :target-type
                                      test-int-enum :member-name
                                      "defaultIntEnum")
                                     (empty-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "emptyString")
                                     (false-boolean :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "falseBoolean")
                                     (empty-blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "emptyBlob")
                                     (zero-byte :target-type
                                      smithy/sdk/smithy-types:byte :member-name
                                      "zeroByte")
                                     (zero-short :target-type
                                      smithy/sdk/smithy-types:short
                                      :member-name "zeroShort")
                                     (zero-integer :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "zeroInteger")
                                     (zero-long :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "zeroLong")
                                     (zero-float :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "zeroFloat")
                                     (zero-double :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "zeroDouble"))
                                    (:shape-name "DefaultsMixin"))

(smithy/sdk/shapes:define-map dense-boolean-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map dense-number-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map dense-set-map :key smithy/sdk/smithy-types:string
                              :value string-set)

(smithy/sdk/shapes:define-map dense-string-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map dense-struct-map :key
                              smithy/sdk/smithy-types:string :value
                              greeting-struct)

(smithy/sdk/shapes:define-structure dialog common-lisp:nil
                                    ((language :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "language")
                                     (greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting")
                                     (farewell :target-type farewell
                                      :member-name "farewell"))
                                    (:shape-name "Dialog"))

(smithy/sdk/shapes:define-list dialog-list :member dialog)

(smithy/sdk/shapes:define-map dialog-map :key smithy/sdk/smithy-types:string
                              :value dialog)

(smithy/sdk/shapes:define-type document smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure document-type-as-map-value-input-output
                                    common-lisp:nil
                                    ((doc-valued-map :target-type
                                      document-valued-map :member-name
                                      "docValuedMap"))
                                    (:shape-name
                                     "DocumentTypeAsMapValueInputOutput"))

(smithy/sdk/shapes:define-interface document-type-as-payload-input-output
                                    common-lisp:nil
                                    ((document-value :target-type document
                                      :member-name "documentValue"
                                      :http-payload common-lisp:t))
                                    (:shape-name
                                     "DocumentTypeAsPayloadInputOutput"))

(smithy/sdk/shapes:define-structure document-type-input-output common-lisp:nil
                                    ((string-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stringValue")
                                     (document-value :target-type document
                                      :member-name "documentValue"))
                                    (:shape-name "DocumentTypeInputOutput"))

(smithy/sdk/shapes:define-map document-valued-map :key
                              smithy/sdk/smithy-types:string :value document)

(smithy/sdk/shapes:define-input empty-input-and-empty-output-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name "EmptyInputAndEmptyOutputInput"))

(smithy/sdk/shapes:define-output empty-input-and-empty-output-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "EmptyInputAndEmptyOutputOutput"))

(smithy/sdk/shapes:define-interface enum-payload-input common-lisp:nil
                                    ((payload :target-type string-enum
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name "EnumPayloadInput"))

(smithy/sdk/shapes:define-structure farewell common-lisp:nil
                                    ((phrase :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "phrase"))
                                    (:shape-name "Farewell"))

(smithy/sdk/shapes:define-type finite-streaming-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-error foo-error common-lisp:nil common-lisp:nil
                                (:shape-name "FooError") (:error-code 500))

(smithy/sdk/shapes:define-structure fractional-seconds-output common-lisp:nil
                                    ((datetime :target-type date-time
                                      :member-name "datetime"))
                                    (:shape-name "FractionalSecondsOutput"))

(smithy/sdk/shapes:define-interface greeting-with-errors-output common-lisp:nil
                                    ((greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting" :http-header
                                      "X-Greeting"))
                                    (:shape-name "GreetingWithErrorsOutput"))

(smithy/sdk/shapes:define-input host-label-input common-lisp:nil
                                ((label :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "label"
                                  :host-label common-lisp:t))
                                (:shape-name "HostLabelInput"))

(smithy/sdk/shapes:define-structure http-checksum-required-input-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo"))
                                    (:shape-name
                                     "HttpChecksumRequiredInputOutput"))

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

(smithy/sdk/shapes:define-interface http-payload-traits-input-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo" :http-header "X-Foo")
                                     (blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "blob" :http-payload common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadTraitsInputOutput"))

(smithy/sdk/shapes:define-interface
 http-payload-traits-with-media-type-input-output common-lisp:nil
 ((foo :target-type smithy/sdk/smithy-types:string :member-name "foo"
   :http-header "X-Foo")
  (blob :target-type text-plain-blob :member-name "blob" :http-payload
   common-lisp:t))
 (:shape-name "HttpPayloadTraitsWithMediaTypeInputOutput"))

(smithy/sdk/shapes:define-interface http-payload-with-structure-input-output
                                    common-lisp:nil
                                    ((nested :target-type nested-payload
                                      :member-name "nested" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadWithStructureInputOutput"))

(smithy/sdk/shapes:define-interface http-payload-with-union-input-output
                                    common-lisp:nil
                                    ((nested :target-type union-payload
                                      :member-name "nested" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "HttpPayloadWithUnionInputOutput"))

(smithy/sdk/shapes:define-input http-prefix-headers-in-response-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "HttpPrefixHeadersInResponseInput"))

(smithy/sdk/shapes:define-output http-prefix-headers-in-response-output
                                 common-lisp:nil
                                 ((prefix-headers :target-type string-map
                                   :member-name "prefixHeaders"
                                   :http-prefix-headers ""))
                                 (:shape-name
                                  "HttpPrefixHeadersInResponseOutput"))

(smithy/sdk/shapes:define-input http-prefix-headers-input common-lisp:nil
                                ((foo :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "foo" :http-header "x-foo")
                                 (foo-map :target-type string-map :member-name
                                  "fooMap" :http-prefix-headers "x-foo-"))
                                (:shape-name "HttpPrefixHeadersInput"))

(smithy/sdk/shapes:define-output http-prefix-headers-output common-lisp:nil
                                 ((foo :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "foo" :http-header "x-foo")
                                  (foo-map :target-type string-map :member-name
                                   "fooMap" :http-prefix-headers "x-foo-"))
                                 (:shape-name "HttpPrefixHeadersOutput"))

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

(smithy/sdk/shapes:define-input http-request-with-regex-literal-input
                                common-lisp:nil
                                ((str :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "str" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "HttpRequestWithRegexLiteralInput"))

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

(smithy/sdk/shapes:define-interface input-and-output-with-headers-io
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
                                      "X-EnumList")
                                     (header-integer-enum :target-type
                                      integer-enum :member-name
                                      "headerIntegerEnum" :http-header
                                      "X-IntegerEnum")
                                     (header-integer-enum-list :target-type
                                      integer-enum-list :member-name
                                      "headerIntegerEnumList" :http-header
                                      "X-IntegerEnumList"))
                                    (:shape-name "InputAndOutputWithHeadersIO"))

(smithy/sdk/shapes:define-error invalid-greeting common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InvalidGreeting")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure json-blobs-input-output common-lisp:nil
                                    ((data :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "data"))
                                    (:shape-name "JsonBlobsInputOutput"))

(smithy/sdk/shapes:define-structure json-enums-input-output common-lisp:nil
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
                                    (:shape-name "JsonEnumsInputOutput"))

(smithy/sdk/shapes:define-type json-header-string
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-structure json-int-enums-input-output common-lisp:nil
                                    ((integer-enum1 :target-type integer-enum
                                      :member-name "integerEnum1")
                                     (integer-enum2 :target-type integer-enum
                                      :member-name "integerEnum2")
                                     (integer-enum3 :target-type integer-enum
                                      :member-name "integerEnum3")
                                     (integer-enum-list :target-type
                                      integer-enum-list :member-name
                                      "integerEnumList")
                                     (integer-enum-set :target-type
                                      integer-enum-set :member-name
                                      "integerEnumSet")
                                     (integer-enum-map :target-type
                                      integer-enum-map :member-name
                                      "integerEnumMap"))
                                    (:shape-name "JsonIntEnumsInputOutput"))

(smithy/sdk/shapes:define-structure json-lists-input-output common-lisp:nil
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
                                     (structure-list :target-type
                                      structure-list :member-name
                                      "structureList" :json-name
                                      "myStructureList"))
                                    (:shape-name "JsonListsInputOutput"))

(smithy/sdk/shapes:define-structure json-maps-input-output common-lisp:nil
                                    ((dense-struct-map :target-type
                                      dense-struct-map :member-name
                                      "denseStructMap")
                                     (dense-number-map :target-type
                                      dense-number-map :member-name
                                      "denseNumberMap")
                                     (dense-boolean-map :target-type
                                      dense-boolean-map :member-name
                                      "denseBooleanMap")
                                     (dense-string-map :target-type
                                      dense-string-map :member-name
                                      "denseStringMap")
                                     (dense-set-map :target-type dense-set-map
                                      :member-name "denseSetMap"))
                                    (:shape-name "JsonMapsInputOutput"))

(smithy/sdk/shapes:define-structure json-timestamps-input-output
                                    common-lisp:nil
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
                                    (:shape-name "JsonTimestampsInputOutput"))

(smithy/sdk/shapes:define-type json-value smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-interface malformed-accept-with-generic-string-output
                                    common-lisp:nil
                                    ((payload :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "MalformedAcceptWithGenericStringOutput"))

(smithy/sdk/shapes:define-interface malformed-accept-with-payload-output
                                    common-lisp:nil
                                    ((payload :target-type jpeg-blob
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "MalformedAcceptWithPayloadOutput"))

(smithy/sdk/shapes:define-structure malformed-blob-input common-lisp:nil
                                    ((blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "blob"))
                                    (:shape-name "MalformedBlobInput"))

(smithy/sdk/shapes:define-input malformed-boolean-input common-lisp:nil
                                ((boolean-in-body :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanInBody")
                                 (boolean-in-path :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "booleanInPath"
                                  :http-label common-lisp:t)
                                 (boolean-in-query :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanInQuery" :http-query
                                  "booleanInQuery")
                                 (boolean-in-header :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanInHeader" :http-header
                                  "booleanInHeader"))
                                (:shape-name "MalformedBooleanInput"))

(smithy/sdk/shapes:define-input malformed-byte-input common-lisp:nil
                                ((byte-in-body :target-type
                                  smithy/sdk/smithy-types:byte :member-name
                                  "byteInBody")
                                 (byte-in-path :target-type
                                  smithy/sdk/smithy-types:byte :required
                                  common-lisp:t :member-name "byteInPath"
                                  :http-label common-lisp:t)
                                 (byte-in-query :target-type
                                  smithy/sdk/smithy-types:byte :member-name
                                  "byteInQuery" :http-query "byteInQuery")
                                 (byte-in-header :target-type
                                  smithy/sdk/smithy-types:byte :member-name
                                  "byteInHeader" :http-header "byteInHeader"))
                                (:shape-name "MalformedByteInput"))

(smithy/sdk/shapes:define-interface
 malformed-content-type-with-generic-string-input common-lisp:nil
 ((payload :target-type smithy/sdk/smithy-types:string :member-name "payload"
   :http-payload common-lisp:t))
 (:shape-name "MalformedContentTypeWithGenericStringInput"))

(smithy/sdk/shapes:define-interface malformed-content-type-with-payload-input
                                    common-lisp:nil
                                    ((payload :target-type jpeg-blob
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "MalformedContentTypeWithPayloadInput"))

(smithy/sdk/shapes:define-interface
 malformed-content-type-without-body-empty-input-input common-lisp:nil
 ((header :target-type smithy/sdk/smithy-types:string :member-name "header"
   :http-header "header"))
 (:shape-name "MalformedContentTypeWithoutBodyEmptyInputInput"))

(smithy/sdk/shapes:define-input malformed-double-input common-lisp:nil
                                ((double-in-body :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleInBody")
                                 (double-in-path :target-type
                                  smithy/sdk/smithy-types:double :required
                                  common-lisp:t :member-name "doubleInPath"
                                  :http-label common-lisp:t)
                                 (double-in-query :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleInQuery" :http-query "doubleInQuery")
                                 (double-in-header :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleInHeader" :http-header
                                  "doubleInHeader"))
                                (:shape-name "MalformedDoubleInput"))

(smithy/sdk/shapes:define-input malformed-float-input common-lisp:nil
                                ((float-in-body :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "floatInBody")
                                 (float-in-path :target-type
                                  smithy/sdk/smithy-types:float :required
                                  common-lisp:t :member-name "floatInPath"
                                  :http-label common-lisp:t)
                                 (float-in-query :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "floatInQuery" :http-query "floatInQuery")
                                 (float-in-header :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "floatInHeader" :http-header
                                  "floatInHeader"))
                                (:shape-name "MalformedFloatInput"))

(smithy/sdk/shapes:define-input malformed-integer-input common-lisp:nil
                                ((integer-in-body :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integerInBody")
                                 (integer-in-path :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "integerInPath"
                                  :http-label common-lisp:t)
                                 (integer-in-query :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integerInQuery" :http-query
                                  "integerInQuery")
                                 (integer-in-header :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integerInHeader" :http-header
                                  "integerInHeader"))
                                (:shape-name "MalformedIntegerInput"))

(smithy/sdk/shapes:define-structure malformed-list-input common-lisp:nil
                                    ((body-list :target-type simple-list
                                      :member-name "bodyList"))
                                    (:shape-name "MalformedListInput"))

(smithy/sdk/shapes:define-input malformed-long-input common-lisp:nil
                                ((long-in-body :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "longInBody")
                                 (long-in-path :target-type
                                  smithy/sdk/smithy-types:long :required
                                  common-lisp:t :member-name "longInPath"
                                  :http-label common-lisp:t)
                                 (long-in-query :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "longInQuery" :http-query "longInQuery")
                                 (long-in-header :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "longInHeader" :http-header "longInHeader"))
                                (:shape-name "MalformedLongInput"))

(smithy/sdk/shapes:define-structure malformed-map-input common-lisp:nil
                                    ((body-map :target-type simple-map
                                      :member-name "bodyMap"))
                                    (:shape-name "MalformedMapInput"))

(smithy/sdk/shapes:define-structure malformed-request-body-input
                                    common-lisp:nil
                                    ((int :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "int")
                                     (float :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "float"))
                                    (:shape-name "MalformedRequestBodyInput"))

(smithy/sdk/shapes:define-input malformed-short-input common-lisp:nil
                                ((short-in-body :target-type
                                  smithy/sdk/smithy-types:short :member-name
                                  "shortInBody")
                                 (short-in-path :target-type
                                  smithy/sdk/smithy-types:short :required
                                  common-lisp:t :member-name "shortInPath"
                                  :http-label common-lisp:t)
                                 (short-in-query :target-type
                                  smithy/sdk/smithy-types:short :member-name
                                  "shortInQuery" :http-query "shortInQuery")
                                 (short-in-header :target-type
                                  smithy/sdk/smithy-types:short :member-name
                                  "shortInHeader" :http-header
                                  "shortInHeader"))
                                (:shape-name "MalformedShortInput"))

(smithy/sdk/shapes:define-interface malformed-string-input common-lisp:nil
                                    ((blob :target-type json-header-string
                                      :member-name "blob" :http-header
                                      "amz-media-typed-header"))
                                    (:shape-name "MalformedStringInput"))

(smithy/sdk/shapes:define-structure malformed-timestamp-body-date-time-input
                                    common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "MalformedTimestampBodyDateTimeInput"))

(smithy/sdk/shapes:define-structure malformed-timestamp-body-default-input
                                    common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp"))
                                    (:shape-name
                                     "MalformedTimestampBodyDefaultInput"))

(smithy/sdk/shapes:define-structure malformed-timestamp-body-http-date-input
                                    common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp" :timestamp-format
                                      "http-date"))
                                    (:shape-name
                                     "MalformedTimestampBodyHttpDateInput"))

(smithy/sdk/shapes:define-interface malformed-timestamp-header-date-time-input
                                    common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp" :http-header "timestamp"
                                      :timestamp-format "date-time"))
                                    (:shape-name
                                     "MalformedTimestampHeaderDateTimeInput"))

(smithy/sdk/shapes:define-interface malformed-timestamp-header-default-input
                                    common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp" :http-header "timestamp"))
                                    (:shape-name
                                     "MalformedTimestampHeaderDefaultInput"))

(smithy/sdk/shapes:define-interface malformed-timestamp-header-epoch-input
                                    common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp" :http-header "timestamp"
                                      :timestamp-format "epoch-seconds"))
                                    (:shape-name
                                     "MalformedTimestampHeaderEpochInput"))

(smithy/sdk/shapes:define-input malformed-timestamp-path-default-input
                                common-lisp:nil
                                ((timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "MalformedTimestampPathDefaultInput"))

(smithy/sdk/shapes:define-input malformed-timestamp-path-epoch-input
                                common-lisp:nil
                                ((timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-label common-lisp:t :timestamp-format
                                  "epoch-seconds"))
                                (:shape-name
                                 "MalformedTimestampPathEpochInput"))

(smithy/sdk/shapes:define-input malformed-timestamp-path-http-date-input
                                common-lisp:nil
                                ((timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-label common-lisp:t :timestamp-format
                                  "http-date"))
                                (:shape-name
                                 "MalformedTimestampPathHttpDateInput"))

(smithy/sdk/shapes:define-input malformed-timestamp-query-default-input
                                common-lisp:nil
                                ((timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-query "timestamp"))
                                (:shape-name
                                 "MalformedTimestampQueryDefaultInput"))

(smithy/sdk/shapes:define-input malformed-timestamp-query-epoch-input
                                common-lisp:nil
                                ((timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-query "timestamp" :timestamp-format
                                  "epoch-seconds"))
                                (:shape-name
                                 "MalformedTimestampQueryEpochInput"))

(smithy/sdk/shapes:define-input malformed-timestamp-query-http-date-input
                                common-lisp:nil
                                ((timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "timestamp"
                                  :http-query "timestamp" :timestamp-format
                                  "http-date"))
                                (:shape-name
                                 "MalformedTimestampQueryHttpDateInput"))

(smithy/sdk/shapes:define-structure malformed-union-input common-lisp:nil
                                    ((union :target-type simple-union
                                      :member-name "union"))
                                    (:shape-name "MalformedUnionInput"))

(smithy/sdk/shapes:define-interface media-type-header-input common-lisp:nil
                                    ((json :target-type json-value :member-name
                                      "json" :http-header "X-Json"))
                                    (:shape-name "MediaTypeHeaderInput"))

(smithy/sdk/shapes:define-interface media-type-header-output common-lisp:nil
                                    ((json :target-type json-value :member-name
                                      "json" :http-header "X-Json"))
                                    (:shape-name "MediaTypeHeaderOutput"))

(smithy/sdk/shapes:define-union my-union common-lisp:nil
                                ((string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (boolean-value :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanValue")
                                 (number-value :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "numberValue")
                                 (blob-value :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "blobValue")
                                 (timestamp-value :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "timestampValue")
                                 (enum-value :target-type foo-enum :member-name
                                  "enumValue")
                                 (list-value :target-type string-list
                                  :member-name "listValue")
                                 (map-value :target-type string-map
                                  :member-name "mapValue")
                                 (structure-value :target-type greeting-struct
                                  :member-name "structureValue")
                                 (renamed-structure-value :target-type
                                  greeting-struct :member-name
                                  "renamedStructureValue"))
                                (:shape-name "MyUnion"))

(smithy/sdk/shapes:define-structure nested-defaults-mixin common-lisp:nil
                                    ((dialog :target-type dialog :required
                                      common-lisp:t :member-name "dialog")
                                     (dialog-list :target-type dialog-list
                                      :member-name "dialogList")
                                     (dialog-map :target-type dialog-map
                                      :member-name "dialogMap"))
                                    (:shape-name "NestedDefaultsMixin"))

(smithy/sdk/shapes:define-structure nested-payload common-lisp:nil
                                    ((greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "NestedPayload"))

(smithy/sdk/shapes:define-output no-input-and-output-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "NoInputAndOutputOutput"))

(smithy/sdk/shapes:define-interface null-and-empty-headers-io common-lisp:nil
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

(smithy/sdk/shapes:define-input omits-serializing-empty-lists-input
                                common-lisp:nil
                                ((query-string-list :target-type string-list
                                  :member-name "queryStringList" :http-query
                                  "StringList")
                                 (query-integer-list :target-type integer-list
                                  :member-name "queryIntegerList" :http-query
                                  "IntegerList")
                                 (query-double-list :target-type double-list
                                  :member-name "queryDoubleList" :http-query
                                  "DoubleList")
                                 (query-boolean-list :target-type boolean-list
                                  :member-name "queryBooleanList" :http-query
                                  "BooleanList")
                                 (query-timestamp-list :target-type
                                  timestamp-list :member-name
                                  "queryTimestampList" :http-query
                                  "TimestampList")
                                 (query-enum-list :target-type foo-enum-list
                                  :member-name "queryEnumList" :http-query
                                  "EnumList")
                                 (query-integer-enum-list :target-type
                                  integer-enum-list :member-name
                                  "queryIntegerEnumList" :http-query
                                  "IntegerEnumList"))
                                (:shape-name "OmitsSerializingEmptyListsInput"))

(smithy/sdk/shapes:define-input operation-with-defaults-input common-lisp:nil
                                ((defaults :target-type defaults :member-name
                                  "defaults")
                                 (client-optional-defaults :target-type
                                  client-optional-defaults :member-name
                                  "clientOptionalDefaults")
                                 (top-level-default :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "topLevelDefault")
                                 (other-top-level-default :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "otherTopLevelDefault"))
                                (:shape-name "OperationWithDefaultsInput"))

(smithy/sdk/shapes:define-output operation-with-defaults-output
                                 (defaults-mixin) common-lisp:nil
                                 (:shape-name "OperationWithDefaultsOutput"))

(smithy/sdk/shapes:define-input operation-with-nested-structure-input
                                common-lisp:nil
                                ((top-level :target-type top-level :required
                                  common-lisp:t :member-name "topLevel"))
                                (:shape-name
                                 "OperationWithNestedStructureInput"))

(smithy/sdk/shapes:define-output operation-with-nested-structure-output
                                 (nested-defaults-mixin) common-lisp:nil
                                 (:shape-name
                                  "OperationWithNestedStructureOutput"))

(smithy/sdk/shapes:define-structure payload-config common-lisp:nil
                                    ((data :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "data"))
                                    (:shape-name "PayloadConfig"))

(smithy/sdk/shapes:define-union player-action common-lisp:nil
                                ((quit :target-type common-lisp:null
                                  :member-name "quit"))
                                (:shape-name "PlayerAction"))

(smithy/sdk/shapes:define-input post-player-action-input common-lisp:nil
                                ((action :target-type player-action
                                  :member-name "action"))
                                (:shape-name "PostPlayerActionInput"))

(smithy/sdk/shapes:define-output post-player-action-output common-lisp:nil
                                 ((action :target-type player-action :required
                                   common-lisp:t :member-name "action"))
                                 (:shape-name "PostPlayerActionOutput"))

(smithy/sdk/shapes:define-input post-union-with-json-name-input common-lisp:nil
                                ((value :target-type union-with-json-name
                                  :member-name "value"))
                                (:shape-name "PostUnionWithJsonNameInput"))

(smithy/sdk/shapes:define-output post-union-with-json-name-output
                                 common-lisp:nil
                                 ((value :target-type union-with-json-name
                                   :required common-lisp:t :member-name
                                   "value"))
                                 (:shape-name "PostUnionWithJsonNameOutput"))

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

(smithy/sdk/shapes:define-structure recursive-shapes-input-output
                                    common-lisp:nil
                                    ((nested :target-type
                                      recursive-shapes-input-output-nested1
                                      :member-name "nested"))
                                    (:shape-name "RecursiveShapesInputOutput"))

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

(smithy/sdk/shapes:define-structure response-code-http-fallback-input-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "ResponseCodeHttpFallbackInputOutput"))

(smithy/sdk/shapes:define-output response-code-required-output common-lisp:nil
                                 ((response-code :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "responseCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name "ResponseCodeRequiredOutput"))

(smithy/sdk/shapes:define-list simple-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map simple-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-interface simple-scalar-properties-input-output
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
                                      :member-name "doubleValue" :json-name
                                      "DoubleDribble"))
                                    (:shape-name
                                     "SimpleScalarPropertiesInputOutput"))

(smithy/sdk/shapes:define-union simple-union common-lisp:nil
                                ((int :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "int")
                                 (string :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "string"))
                                (:shape-name "SimpleUnion"))

(smithy/sdk/shapes:define-map sparse-boolean-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure sparse-json-lists-input-output
                                    common-lisp:nil
                                    ((sparse-string-list :target-type
                                      sparse-string-list :member-name
                                      "sparseStringList")
                                     (sparse-short-list :target-type
                                      sparse-short-list :member-name
                                      "sparseShortList"))
                                    (:shape-name "SparseJsonListsInputOutput"))

(smithy/sdk/shapes:define-structure sparse-json-maps-input-output
                                    common-lisp:nil
                                    ((sparse-struct-map :target-type
                                      sparse-struct-map :member-name
                                      "sparseStructMap")
                                     (sparse-number-map :target-type
                                      sparse-number-map :member-name
                                      "sparseNumberMap")
                                     (sparse-boolean-map :target-type
                                      sparse-boolean-map :member-name
                                      "sparseBooleanMap")
                                     (sparse-string-map :target-type
                                      sparse-string-map :member-name
                                      "sparseStringMap")
                                     (sparse-set-map :target-type
                                      sparse-set-map :member-name
                                      "sparseSetMap"))
                                    (:shape-name "SparseJsonMapsInputOutput"))

(smithy/sdk/shapes:define-map sparse-number-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map sparse-set-map :key
                              smithy/sdk/smithy-types:string :value string-set)

(smithy/sdk/shapes:define-map sparse-struct-map :key
                              smithy/sdk/smithy-types:string :value
                              greeting-struct)

(smithy/sdk/shapes:define-type streaming-blob smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type streaming-text-plain-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t :media-type "text/plain")

(smithy/sdk/shapes:define-interface streaming-traits-input-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo" :http-header "X-Foo")
                                     (blob :target-type streaming-blob
                                      :member-name "blob" :http-payload
                                      common-lisp:t))
                                    (:shape-name "StreamingTraitsInputOutput"))

(smithy/sdk/shapes:define-input streaming-traits-require-length-input
                                common-lisp:nil
                                ((foo :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "foo" :http-header "X-Foo")
                                 (blob :target-type finite-streaming-blob
                                  :member-name "blob" :http-payload
                                  common-lisp:t))
                                (:shape-name
                                 "StreamingTraitsRequireLengthInput"))

(smithy/sdk/shapes:define-interface
 streaming-traits-with-media-type-input-output common-lisp:nil
 ((foo :target-type smithy/sdk/smithy-types:string :member-name "foo"
   :http-header "X-Foo")
  (blob :target-type streaming-text-plain-blob :member-name "blob"
   :http-payload common-lisp:t))
 (:shape-name "StreamingTraitsWithMediaTypeInputOutput"))

(smithy/sdk/shapes:define-enum string-enum
    common-lisp:nil
  (:v "enumvalue"))

(smithy/sdk/shapes:define-interface string-payload-input common-lisp:nil
                                    ((payload :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "payload" :http-payload
                                      common-lisp:t))
                                    (:shape-name "StringPayloadInput"))

(smithy/sdk/shapes:define-list structure-list :member structure-list-member)

(smithy/sdk/shapes:define-structure structure-list-member common-lisp:nil
                                    ((a :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "a" :json-name "value")
                                     (b :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "b" :json-name "other"))
                                    (:shape-name "StructureListMember"))

(smithy/sdk/shapes:define-interface test-body-structure-input-output
                                    common-lisp:nil
                                    ((test-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "testId" :http-header
                                      "x-amz-test-id")
                                     (test-config :target-type test-config
                                      :member-name "testConfig"))
                                    (:shape-name
                                     "TestBodyStructureInputOutput"))

(smithy/sdk/shapes:define-structure test-config common-lisp:nil
                                    ((timeout :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeout"))
                                    (:shape-name "TestConfig"))

(smithy/sdk/shapes:define-enum test-enum
    common-lisp:nil
  (:foo "FOO")
  (:bar "BAR")
  (:baz "BAZ"))

(smithy/sdk/shapes:define-enum test-int-enum
    common-lisp:nil
  (:one 1)
  (:two 2))

(smithy/sdk/shapes:define-interface test-no-payload-input-output
                                    common-lisp:nil
                                    ((test-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "testId" :http-header
                                      "X-Amz-Test-Id"))
                                    (:shape-name "TestNoPayloadInputOutput"))

(smithy/sdk/shapes:define-interface test-payload-blob-input-output
                                    common-lisp:nil
                                    ((content-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "contentType" :http-header
                                      "Content-Type")
                                     (data :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "data" :http-payload common-lisp:t))
                                    (:shape-name "TestPayloadBlobInputOutput"))

(smithy/sdk/shapes:define-interface test-payload-structure-input-output
                                    common-lisp:nil
                                    ((test-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "testId" :http-header
                                      "x-amz-test-id")
                                     (payload-config :target-type
                                      payload-config :member-name
                                      "payloadConfig" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "TestPayloadStructureInputOutput"))

(smithy/sdk/shapes:define-list test-string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map test-string-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-interface timestamp-format-headers-io common-lisp:nil
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

(smithy/sdk/shapes:define-structure top-level (nested-defaults-mixin)
                                    common-lisp:nil (:shape-name "TopLevel"))

(smithy/sdk/shapes:define-structure union-input-output common-lisp:nil
                                    ((contents :target-type my-union
                                      :member-name "contents"))
                                    (:shape-name "UnionInputOutput"))

(smithy/sdk/shapes:define-union union-payload common-lisp:nil
                                ((greeting :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "greeting"))
                                (:shape-name "UnionPayload"))

(smithy/sdk/shapes:define-union union-with-json-name common-lisp:nil
                                ((foo :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "foo" :json-name "FOO")
                                 (bar :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "bar")
                                 (baz :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "baz" :json-name "_baz"))
                                (:shape-name "UnionWithJsonName"))

(smithy/sdk/operation:define-operation all-query-string-types :shape-name
                                       "AllQueryStringTypes" :input
                                       all-query-string-types-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "GET" :uri
                                       "/AllQueryStringTypesInput"
                                       :request-tests
                                       ((:id "RestJsonAllQueryStringTypes"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
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
                                           "IntegerEnumList=2"
                                           "IntegerEnumList=3")
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
                                          ("queryIntegerEnumList" . #(1 2 3))
                                          ("queryParamsMapOfStringList"
                                           ("String" . #("Hello there"))
                                           ("StringList" . #("a" "b" "c"))
                                           ("StringSet" . #("a" "b" "c"))
                                           ("Byte" . #("1")) ("Short" . #("2"))
                                           ("Integer" . #("3"))
                                           ("IntegerList" . #("1" "2" "3"))
                                           ("IntegerSet" . #("1" "2" "3"))
                                           ("Long" . #("4"))
                                           ("Float" . #("1.1"))
                                           ("Double" . #("1.1"))
                                           ("DoubleList"
                                            . #("1.1" "2.1" "3.1"))
                                           ("Boolean" . #("true"))
                                           ("BooleanList"
                                            . #("true" "false" "true"))
                                           ("Timestamp"
                                            . #("1970-01-01T00:00:01Z"))
                                           ("TimestampList"
                                            . #("1970-01-01T00:00:01Z"
                                                "1970-01-01T00:00:02Z"
                                                "1970-01-01T00:00:03Z"))
                                           ("Enum" . #("Foo"))
                                           ("EnumList" . #("Foo" "Baz" "Bar"))
                                           ("IntegerEnum" . #("1"))
                                           ("IntegerEnumList"
                                            . #("1" "2" "3"))))
                                         :documentation
                                         "Serializes query string parameters with all supported types")
                                        (:id "RestJsonQueryStringMap" :protocol
                                         "aws.protocols#restJson1" :method
                                         "GET" :uri "/AllQueryStringTypesInput"
                                         :query-params
                                         #("QueryParamsStringKeyA=Foo"
                                           "QueryParamsStringKeyB=Bar")
                                         :body "" :params
                                         (("queryParamsMapOfStringList"
                                           ("QueryParamsStringKeyA" . #("Foo"))
                                           ("QueryParamsStringKeyB"
                                            . #("Bar"))))
                                         :documentation
                                         "Handles query string maps")
                                        (:id "RestJsonQueryStringEscaping"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("String=%20%25%3A%2F%3F%23%5B%5D%40%21%24%26%27%28%29%2A%2B%2C%3B%3D%F0%9F%98%B9")
                                         :body "" :params
                                         (("queryString"
                                           . " %:/?#[]@!$&'()*+,;=😹")
                                          ("queryParamsMapOfStringList"
                                           ("String"
                                            . #(" %:/?#[]@!$&'()*+,;=😹"))))
                                         :documentation
                                         "Handles escaping all required characters in the query string.")
                                        (:id
                                         "RestJsonSupportsNaNFloatQueryValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Float=NaN" "Double=NaN") :body ""
                                         :params
                                         (("queryFloat" . "NaN")
                                          ("queryDouble" . "NaN")
                                          ("queryParamsMapOfStringList"
                                           ("Float" . #("NaN"))
                                           ("Double" . #("NaN"))))
                                         :documentation
                                         "Supports handling NaN float query values.")
                                        (:id
                                         "RestJsonSupportsInfinityFloatQueryValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Float=Infinity" "Double=Infinity")
                                         :body "" :params
                                         (("queryFloat" . "Infinity")
                                          ("queryDouble" . "Infinity")
                                          ("queryParamsMapOfStringList"
                                           ("Float" . #("Infinity"))
                                           ("Double" . #("Infinity"))))
                                         :documentation
                                         "Supports handling Infinity float query values.")
                                        (:id
                                         "RestJsonSupportsNegativeInfinityFloatQueryValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Float=-Infinity"
                                           "Double=-Infinity")
                                         :body "" :params
                                         (("queryFloat" . "-Infinity")
                                          ("queryDouble" . "-Infinity")
                                          ("queryParamsMapOfStringList"
                                           ("Float" . #("-Infinity"))
                                           ("Double" . #("-Infinity"))))
                                         :documentation
                                         "Supports handling -Infinity float query values.")
                                        (:id "RestJsonZeroAndFalseQueryValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/AllQueryStringTypesInput"
                                         :query-params
                                         #("Integer=0" "Boolean=false") :body
                                         "" :params
                                         (("queryInteger" . 0) ("queryBoolean")
                                          ("queryParamsMapOfStringList"
                                           ("Integer" . #("0"))
                                           ("Boolean" . #("false"))))
                                         :documentation
                                         "Query values of 0 and false are serialized")))

(smithy/sdk/operation:define-operation constant-and-variable-query-string
                                       :shape-name
                                       "ConstantAndVariableQueryString" :input
                                       constant-and-variable-query-string-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/ConstantAndVariableQueryString?foo=bar"
                                       :request-tests
                                       ((:id
                                         "RestJsonConstantAndVariableQueryStringMissingOneValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/ConstantAndVariableQueryString"
                                         :query-params #("foo=bar" "baz=bam")
                                         :forbid-query-params #("maybeSet")
                                         :body "" :params (("baz" . "bam"))
                                         :documentation
                                         "Mixes constant and variable query string parameters")
                                        (:id
                                         "RestJsonConstantAndVariableQueryStringAllValues"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id "RestJsonConstantQueryString"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/ConstantQueryString/hi"
                                         :query-params #("foo=bar" "hello")
                                         :body "" :params (("hello" . "hi"))
                                         :documentation
                                         "Includes constant query string parameters")))

(smithy/sdk/operation:define-operation content-type-parameters :shape-name
                                       "ContentTypeParameters" :input
                                       content-type-parameters-input :output
                                       content-type-parameters-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/ContentTypeParameters" :request-tests
                                       ((:id
                                         "RestJsonMustSupportParametersInContentType"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/ContentTypeParameters" :headers
                                         (("Content-Type"
                                           . "application/json; charset=utf-8"))
                                         :body "{\"value\":5}" :params
                                         (("value" . 5)) :documentation
                                         "A server should ignore parameters added to the content type"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation datetime-offsets :shape-name
                                       "DatetimeOffsets" :input
                                       common-lisp:null :output
                                       datetime-offsets-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/DatetimeOffsets" :response-tests
                                       ((:id
                                         "RestJsonDateTimeWithNegativeOffset"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "      {
          \"datetime\": \"2019-12-16T22:48:18-01:00\"
      }
"
                                         :body-media-type "application/json"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets"
                                         :applies-to "client")
                                        (:id
                                         "RestJsonDateTimeWithPositiveOffset"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "      {
          \"datetime\": \"2019-12-17T00:48:18+01:00\"
      }
"
                                         :body-media-type "application/json"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation document-type :shape-name "DocumentType"
                                       :input document-type-input-output
                                       :output document-type-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/DocumentType" :request-tests
                                       ((:id "DocumentTypeInputWithObject"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/DocumentType"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": {
        \"foo\": \"bar\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" ("foo" . "bar")))
                                         :documentation
                                         "Serializes document types as part of the JSON request payload with no escaping.")
                                        (:id "DocumentInputWithString"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/DocumentType"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": \"hello\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" . "hello"))
                                         :documentation
                                         "Serializes document types using a string.")
                                        (:id "DocumentInputWithNumber"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/DocumentType"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": 10
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" . 10))
                                         :documentation
                                         "Serializes document types using a number.")
                                        (:id "DocumentInputWithBoolean"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/DocumentType"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": true
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" . common-lisp:t))
                                         :documentation
                                         "Serializes document types using a boolean.")
                                        (:id "DocumentInputWithList" :protocol
                                         "aws.protocols#restJson1" :method
                                         "PUT" :uri "/DocumentType" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": [
        true,
        \"hi\",
        [
            1,
            2
        ],
        {
            \"foo\": {
                \"baz\": [
                    3,
                    4
                ]
            }
        }
    ]
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue"
                                           . #(common-lisp:t "hi" #(1 2)
                                               (("foo" ("baz" . #(3 4)))))))
                                         :documentation
                                         "Serializes document types using a list."))
                                       :response-tests
                                       ((:id "DocumentOutput" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": {
        \"foo\": \"bar\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" ("foo" . "bar")))
                                         :documentation
                                         "Serializes documents as part of the JSON response payload with no escaping.")
                                        (:id "DocumentOutputString" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": \"hello\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" . "hello"))
                                         :documentation
                                         "Document types can be JSON scalars too.")
                                        (:id "DocumentOutputNumber" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": 10
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue" . 10))
                                         :documentation
                                         "Document types can be JSON scalars too.")
                                        (:id "DocumentOutputBoolean" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": false
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue"))
                                         :documentation
                                         "Document types can be JSON scalars too.")
                                        (:id "DocumentOutputArray" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": \"string\",
    \"documentValue\": [
        true,
        false
    ]
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("stringValue" . "string")
                                          ("documentValue"
                                           . #(common-lisp:t common-lisp:nil)))
                                         :documentation
                                         "Document types can be JSON arrays.")))

(smithy/sdk/operation:define-operation document-type-as-map-value :shape-name
                                       "DocumentTypeAsMapValue" :input
                                       document-type-as-map-value-input-output
                                       :output
                                       document-type-as-map-value-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/DocumentTypeAsMapValue"
                                       :request-tests
                                       ((:id "DocumentTypeAsMapValueInput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/DocumentTypeAsMapValue" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"docValuedMap\": {
        \"foo\": { \"f\": 1, \"o\": 2 },
        \"bar\": [ \"b\", \"a\", \"r\" ],
        \"baz\": \"BAZ\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("docValuedMap"
                                           ("foo" ("f" . 1) ("o" . 2))
                                           ("bar" . #("b" "a" "r"))
                                           ("baz" . "BAZ")))
                                         :documentation
                                         "Serializes a map that uses documents as the value."))
                                       :response-tests
                                       ((:id "DocumentTypeAsMapValueOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"docValuedMap\": {
        \"foo\": { \"f\": 1, \"o\": 2 },
        \"bar\": [ \"b\", \"a\", \"r\" ],
        \"baz\": \"BAZ\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("docValuedMap"
                                           ("foo" ("f" . 1) ("o" . 2))
                                           ("bar" . #("b" "a" "r"))
                                           ("baz" . "BAZ")))
                                         :documentation
                                         "Serializes a map that uses documents as the value.")))

(smithy/sdk/operation:define-operation document-type-as-payload :shape-name
                                       "DocumentTypeAsPayload" :input
                                       document-type-as-payload-input-output
                                       :output
                                       document-type-as-payload-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/DocumentTypeAsPayload"
                                       :request-tests
                                       ((:id "DocumentTypeAsPayloadInput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/DocumentTypeAsPayload" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"foo\": \"bar\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("documentValue" ("foo" . "bar")))
                                         :documentation
                                         "Serializes a document as the target of the httpPayload trait.")
                                        (:id "DocumentTypeAsPayloadInputString"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/DocumentTypeAsPayload" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "\"hello\"" :body-media-type
                                         "application/json" :params
                                         (("documentValue" . "hello"))
                                         :documentation
                                         "Serializes a document as the target of the httpPayload trait using a string."))
                                       :response-tests
                                       ((:id "DocumentTypeAsPayloadOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"foo\": \"bar\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("documentValue" ("foo" . "bar")))
                                         :documentation
                                         "Serializes a document as the target of the httpPayload trait.")
                                        (:id
                                         "DocumentTypeAsPayloadOutputString"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "\"hello\"" :body-media-type
                                         "application/json" :params
                                         (("documentValue" . "hello"))
                                         :documentation
                                         "Serializes a document as a payload string.")))

(smithy/sdk/operation:define-operation empty-input-and-empty-output :shape-name
                                       "EmptyInputAndEmptyOutput" :input
                                       empty-input-and-empty-output-input
                                       :output
                                       empty-input-and-empty-output-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/EmptyInputAndEmptyOutput"
                                       :request-tests
                                       ((:id "RestJsonEmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/EmptyInputAndEmptyOutput" :body ""
                                         :documentation
                                         "Clients should not serialize a JSON payload when no parameters
are given that are sent in the body. A service will tolerate
clients that omit a payload or that send a JSON object.")
                                        (:id
                                         "RestJsonEmptyInputAndEmptyOutputWithJson"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/EmptyInputAndEmptyOutput" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Similar to RestJsonEmptyInputAndEmptyOutput, but ensures that
services gracefully handles receiving a JSON object."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id "RestJsonEmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "As of January 2021, server implementations are expected to
respond with a JSON object regardless of if the output
parameters are empty.")
                                        (:id
                                         "RestJsonEmptyInputAndEmptyOutputJsonObjectOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "" :documentation
                                         "This test ensures that clients can gracefully handle
situations where a service omits a JSON payload entirely."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation endpoint-operation :shape-name
                                       "EndpointOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/EndpointOperation"
                                       :endpoint-host-prefix "foo."
                                       :request-tests
                                       ((:id "RestJsonEndpointTrait" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/EndpointOperation" :host
                                         "example.com" :resolved-host
                                         "foo.example.com" :body ""
                                         :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait.")))

(smithy/sdk/operation:define-operation endpoint-with-host-label-operation
                                       :shape-name
                                       "EndpointWithHostLabelOperation" :input
                                       host-label-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/EndpointWithHostLabelOperation"
                                       :endpoint-host-prefix "foo.{label}."
                                       :request-tests
                                       ((:id
                                         "RestJsonEndpointTraitWithHostLabel"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/EndpointWithHostLabelOperation"
                                         :host "example.com" :resolved-host
                                         "foo.bar.example.com" :body
                                         "{\"label\": \"bar\"}"
                                         :body-media-type "application/json"
                                         :params (("label" . "bar"))
                                         :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait, and can use the host label trait to define
further customization based on user input.")))

(smithy/sdk/operation:define-operation fractional-seconds :shape-name
                                       "FractionalSeconds" :input
                                       common-lisp:null :output
                                       fractional-seconds-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/FractionalSeconds" :response-tests
                                       ((:id
                                         "RestJsonDateTimeWithFractionalSeconds"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "      {
          \"datetime\": \"2000-01-02T20:34:56.123Z\"
      }
"
                                         :body-media-type "application/json"
                                         :params
                                         (("datetime" . 9.46845296123d8))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime timestamps with fractional seconds"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation greeting-with-errors :shape-name
                                       "GreetingWithErrors" :input
                                       common-lisp:null :output
                                       greeting-with-errors-output :errors
                                       (complex-error foo-error
                                        invalid-greeting)
                                       :method "PUT" :uri "/GreetingWithErrors"
                                       :response-tests
                                       ((:id "RestJsonGreetingWithErrors"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Greeting" . "Hello")) :body "{}"
                                         :body-media-type "application/json"
                                         :params (("greeting" . "Hello"))
                                         :documentation
                                         "Ensures that operations with errors successfully know how
to deserialize a successful response. As of January 2021,
server implementations are expected to respond with a
JSON object regardless of if the output parameters are
empty.")
                                        (:id
                                         "RestJsonGreetingWithErrorsNoPayload"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Greeting" . "Hello")) :body ""
                                         :params (("greeting" . "Hello"))
                                         :documentation
                                         "This test is similar to RestJsonGreetingWithErrors, but it
ensures that clients can gracefully deal with a server
omitting a response payload."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation host-with-path-operation :shape-name
                                       "HostWithPathOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "GET" :uri
                                       "/HostWithPathOperation" :request-tests
                                       ((:id "RestJsonHostWithPath" :protocol
                                         "aws.protocols#restJson1" :method
                                         "GET" :uri
                                         "/custom/HostWithPathOperation" :host
                                         "example.com/custom" :body ""
                                         :documentation
                                         "Custom endpoints supplied by users can have paths"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation http-checksum-required :shape-name
                                       "HttpChecksumRequired" :input
                                       http-checksum-required-input-output
                                       :output
                                       http-checksum-required-input-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/HttpChecksumRequired"
                                       :checksum-required common-lisp:t
                                       :request-tests
                                       ((:id "RestJsonHttpChecksumRequired"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpChecksumRequired" :headers
                                         (("Content-Type" . "application/json")
                                          ("Content-MD5"
                                           . "iB0/3YSo7maijL0IGOgA9g=="))
                                         :body "{
    \"foo\":\"base64 encoded md5 checksum\"
}
"
                                         :body-media-type "application/json"
                                         :params
                                         (("foo"
                                           . "base64 encoded md5 checksum"))
                                         :documentation
                                         "Adds Content-MD5 header")))

(smithy/sdk/operation:define-operation http-empty-prefix-headers :shape-name
                                       "HttpEmptyPrefixHeaders" :input
                                       http-empty-prefix-headers-input :output
                                       http-empty-prefix-headers-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/HttpEmptyPrefixHeaders" :request-tests
                                       ((:id
                                         "RestJsonHttpEmptyPrefixHeadersRequestClient"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonHttpEmptyPrefixHeadersRequestServer"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonHttpEmptyPrefixHeadersResponseClient"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonHttpEmptyPrefixHeadersResponseServer"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id "RestJsonEnumPayloadRequest"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/EnumPayload"
                                         :headers
                                         (("Content-Type" . "text/plain"))
                                         :body "enumvalue" :params
                                         (("payload" . "enumvalue"))))
                                       :response-tests
                                       ((:id "RestJsonEnumPayloadResponse"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id
                                         "RestJsonHttpPayloadTraitsWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("Content-Type"
                                           . "application/octet-stream")
                                          ("X-Foo" . "Foo"))
                                         :require-headers #("Content-Length")
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload")
                                        (:id
                                         "RestJsonHttpPayloadTraitsWithNoBlobBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("X-Foo" . "Foo")) :body ""
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")) :documentation
                                         "Serializes an empty blob in the HTTP payload")
                                        (:id
                                         "RestJsonHttpPayloadTraitsWithBlobAcceptsAllContentTypes"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "image/jpeg"))
                                         :body "This is definitely a jpeg"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob"
                                           . "This is definitely a jpeg"))
                                         :documentation
                                         "Servers must accept any content type for blob inputs
without the media type trait."
                                         :applies-to "server")
                                        (:id
                                         "RestJsonHttpPayloadTraitsWithBlobAcceptsNoContentType"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("X-Foo" . "Foo")) :body
                                         "This is definitely a jpeg"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob"
                                           . "This is definitely a jpeg"))
                                         :documentation
                                         "Servers must accept no content type for blob inputs
without the media type trait."
                                         :tags #("content-type") :applies-to
                                         "server")
                                        (:id
                                         "RestJsonHttpPayloadTraitsWithBlobAcceptsAllAccepts"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpPayloadTraits" :headers
                                         (("X-Foo" . "Foo")
                                          ("Accept" . "image/jpeg"))
                                         :body "This is definitely a jpeg"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob"
                                           . "This is definitely a jpeg"))
                                         :documentation
                                         "Servers must accept any accept header for blob inputs
without the media type trait."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id
                                         "RestJsonHttpPayloadTraitsWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers (("X-Foo" . "Foo"))
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload")
                                        (:id
                                         "RestJsonHttpPayloadTraitsWithNoBlobBody"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers (("X-Foo" . "Foo"))
                                         :body "" :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")) :documentation
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
                                         "RestJsonHttpPayloadTraitsWithMediaTypeWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/HttpPayloadTraitsWithMediaType"
                                         :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "text/plain"))
                                         :require-headers #("Content-Length")
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a content-type"))
                                       :response-tests
                                       ((:id
                                         "RestJsonHttpPayloadTraitsWithMediaTypeWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "text/plain"))
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a content-type")))

(smithy/sdk/operation:define-operation http-payload-with-structure :shape-name
                                       "HttpPayloadWithStructure" :input
                                       http-payload-with-structure-input-output
                                       :output
                                       http-payload-with-structure-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithStructure"
                                       :request-tests
                                       ((:id "RestJsonHttpPayloadWithStructure"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithStructure" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :require-headers #("Content-Length")
                                         :body "{
    \"greeting\": \"hello\",
    \"name\": \"Phreddy\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("nested" ("greeting" . "hello")
                                           ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload"))
                                       :response-tests
                                       ((:id "RestJsonHttpPayloadWithStructure"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"greeting\": \"hello\",
    \"name\": \"Phreddy\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("nested" ("greeting" . "hello")
                                           ("name" . "Phreddy")))
                                         :documentation
                                         "Serializes a structure in the payload")
                                        (:id
                                         "RestJsonHttpPayloadWithStructureAndEmptyResponseBody"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "" :params
                                         (("nested")) :documentation
                                         "Serializes a structure in the payload")))

(smithy/sdk/operation:define-operation http-payload-with-union :shape-name
                                       "HttpPayloadWithUnion" :input
                                       http-payload-with-union-input-output
                                       :output
                                       http-payload-with-union-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/HttpPayloadWithUnion"
                                       :request-tests
                                       ((:id "RestJsonHttpPayloadWithUnion"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithUnion" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :require-headers #("Content-Length")
                                         :body "{
    \"greeting\": \"hello\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("nested" ("greeting" . "hello")))
                                         :documentation
                                         "Serializes a union in the payload.")
                                        (:id
                                         "RestJsonHttpPayloadWithUnsetUnion"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/HttpPayloadWithUnion" :body ""
                                         :documentation
                                         "No payload is sent if the union has no value."))
                                       :response-tests
                                       ((:id "RestJsonHttpPayloadWithUnion"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"greeting\": \"hello\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("nested" ("greeting" . "hello")))
                                         :documentation
                                         "Serializes a union in the payload.")
                                        (:id
                                         "RestJsonHttpPayloadWithUnsetUnion"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Length" . "0")) :body ""
                                         :documentation
                                         "No payload is sent if the union has no value.")))

(smithy/sdk/operation:define-operation http-prefix-headers :shape-name
                                       "HttpPrefixHeaders" :input
                                       http-prefix-headers-input :output
                                       http-prefix-headers-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/HttpPrefixHeaders" :request-tests
                                       ((:id
                                         "RestJsonHttpPrefixHeadersArePresent"
                                         :protocol "aws.protocols#restJson1"
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
                                        (:id
                                         "RestJsonHttpPrefixHeadersAreNotPresent"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/HttpPrefixHeaders" :headers
                                         (("x-foo" . "Foo")) :body "" :params
                                         (("foo" . "Foo") ("fooMap"))
                                         :documentation
                                         "No prefix headers are serialized because the value is not present"
                                         :applies-to "client")
                                        (:id "RestJsonHttpPrefixEmptyHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/HttpPrefixHeaders" :headers
                                         (("x-foo-abc" . "")) :body "" :params
                                         (("fooMap" ("abc" . "")))
                                         :documentation
                                         "Serialize prefix headers were the value is present but empty"
                                         :applies-to "client"))
                                       :response-tests
                                       ((:id
                                         "RestJsonHttpPrefixHeadersArePresent"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("x-foo" . "Foo")
                                          ("x-foo-abc" . "Abc value")
                                          ("x-foo-def" . "Def value"))
                                         :params
                                         (("foo" . "Foo")
                                          ("fooMap" ("abc" . "Abc value")
                                           ("def" . "Def value")))
                                         :documentation
                                         "Adds headers by prefix")))

(smithy/sdk/operation:define-operation http-prefix-headers-in-response
                                       :shape-name
                                       "HttpPrefixHeadersInResponse" :input
                                       http-prefix-headers-in-response-input
                                       :output
                                       http-prefix-headers-in-response-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/HttpPrefixHeadersResponse"
                                       :response-tests
                                       ((:id "HttpPrefixHeadersResponse"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("x-foo" . "Foo")
                                          ("hello" . "Hello"))
                                         :params
                                         (("prefixHeaders" ("x-foo" . "Foo")
                                           ("hello" . "Hello")))
                                         :documentation
                                         "(de)serializes all response headers")))

(smithy/sdk/operation:define-operation http-request-with-float-labels
                                       :shape-name "HttpRequestWithFloatLabels"
                                       :input
                                       http-request-with-float-labels-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/FloatHttpLabels/{float}/{double}"
                                       :request-tests
                                       ((:id "RestJsonSupportsNaNFloatLabels"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/FloatHttpLabels/NaN/NaN" :body ""
                                         :params
                                         (("float" . "NaN") ("double" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float label values.")
                                        (:id
                                         "RestJsonSupportsInfinityFloatLabels"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/FloatHttpLabels/Infinity/Infinity"
                                         :body "" :params
                                         (("float" . "Infinity")
                                          ("double" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float label values.")
                                        (:id
                                         "RestJsonSupportsNegativeInfinityFloatLabels"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id
                                         "RestJsonHttpRequestWithGreedyLabelInPath"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/HttpRequestWithGreedyLabelInPath/foo/hello%2Fescape/baz/there/guy"
                                         :body "" :params
                                         (("foo" . "hello/escape")
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
                                       ((:id
                                         "RestJsonInputWithHeadersAndAllParams"
                                         :protocol "aws.protocols#restJson1"
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
                                        (:id "RestJsonHttpRequestLabelEscaping"
                                         :protocol "aws.protocols#restJson1"
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
 ((:id "RestJsonHttpRequestWithLabelsAndTimestampFormat" :protocol
   "aws.protocols#restJson1" :method "GET" :uri
   "/HttpRequestWithLabelsAndTimestampFormat/1576540098/Mon%2C%2016%20Dec%202019%2023%3A48%3A18%20GMT/2019-12-16T23%3A48%3A18Z/2019-12-16T23%3A48%3A18Z/1576540098/Mon%2C%2016%20Dec%202019%2023%3A48%3A18%20GMT/2019-12-16T23%3A48%3A18Z"
   :body "" :params
   (("memberEpochSeconds" . 1576540098) ("memberHttpDate" . 1576540098)
    ("memberDateTime" . 1576540098) ("defaultFormat" . 1576540098)
    ("targetEpochSeconds" . 1576540098) ("targetHttpDate" . 1576540098)
    ("targetDateTime" . 1576540098))
   :documentation "Serializes different timestamp formats in URI labels")))

(smithy/sdk/operation:define-operation http-request-with-regex-literal
                                       :shape-name
                                       "HttpRequestWithRegexLiteral" :input
                                       http-request-with-regex-literal-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/ReDosLiteral/{str}/(a+)+"
                                       :request-tests
                                       ((:id
                                         "RestJsonToleratesRegexCharsInSegments"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/ReDosLiteral/abc/(a+)+" :body ""
                                         :params (("str" . "abc"))
                                         :documentation
                                         "Path matching is not broken by regex expressions in literal segments")))

(smithy/sdk/operation:define-operation http-response-code :shape-name
                                       "HttpResponseCode" :input
                                       common-lisp:null :output
                                       http-response-code-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/HttpResponseCode" :response-tests
                                       ((:id "RestJsonHttpResponseCode"
                                         :protocol "aws.protocols#restJson1"
                                         :code 201 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("Status" . 201)) :documentation
                                         "Binds the http response code to an output structure. Note that
even though all members are bound outside of the payload, an
empty JSON object is serialized in the response. However,
clients should be able to handle an empty JSON object or an
empty payload without failing to deserialize a response.")
                                        (:id
                                         "RestJsonHttpResponseCodeDefaultsToModeledCode"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Binds the http response code to the http trait's code if the
code isn't explicitly set. A client would be parsing the
http response code, so this would always be present, but
a server doesn't require it to be set to serialize a request."
                                         :applies-to "server")
                                        (:id
                                         "RestJsonHttpResponseCodeWithNoPayload"
                                         :protocol "aws.protocols#restJson1"
                                         :code 201 :body "" :params
                                         (("Status" . 201)) :documentation
                                         "This test ensures that clients gracefully handle cases where
the service responds with no payload rather than an empty JSON
object."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation http-string-payload :shape-name
                                       "HttpStringPayload" :input
                                       string-payload-input :output
                                       string-payload-input :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/StringPayload" :request-tests
                                       ((:id "RestJsonStringPayloadRequest"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/StringPayload"
                                         :headers
                                         (("Content-Type" . "text/plain"))
                                         :require-headers #("Content-Length")
                                         :body "rawstring" :body-media-type
                                         "text/plain" :params
                                         (("payload" . "rawstring"))))
                                       :response-tests
                                       ((:id "RestJsonStringPayloadResponse"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type" . "text/plain"))
                                         :body "rawstring" :body-media-type
                                         "text/plain" :params
                                         (("payload" . "rawstring")))))

(smithy/sdk/operation:define-operation ignore-query-params-in-response
                                       :shape-name
                                       "IgnoreQueryParamsInResponse" :input
                                       common-lisp:null :output
                                       ignore-query-params-in-response-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/IgnoreQueryParamsInResponse"
                                       :response-tests
                                       ((:id
                                         "RestJsonIgnoreQueryParamsInResponse"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Query parameters must be ignored when serializing the output
of an operation. As of January 2021, server implementations
are expected to respond with a JSON object regardless of
if the output parameters are empty.")
                                        (:id
                                         "RestJsonIgnoreQueryParamsInResponseNoPayload"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "" :documentation
                                         "This test is similar to RestJsonIgnoreQueryParamsInResponse,
but it ensures that clients gracefully handle responses from
the server that do not serialize an empty JSON object."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation input-and-output-with-headers
                                       :shape-name "InputAndOutputWithHeaders"
                                       :input input-and-output-with-headers-io
                                       :output input-and-output-with-headers-io
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/InputAndOutputWithHeaders"
                                       :request-tests
                                       ((:id
                                         "RestJsonInputAndOutputWithStringHeaders"
                                         :protocol "aws.protocols#restJson1"
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
                                        (:id
                                         "RestJsonInputAndOutputWithQuotedStringHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-StringList"
                                           . "\"b,c\", \"\\\"def\\\"\", a"))
                                         :body "" :params
                                         (("headerStringList"
                                           . #("b,c" "\"def\"" "a")))
                                         :documentation
                                         "Tests requests with string list header bindings that require quoting")
                                        (:id
                                         "RestJsonInputAndOutputWithNumericHeaders"
                                         :protocol "aws.protocols#restJson1"
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
                                        (:id
                                         "RestJsonInputAndOutputWithBooleanHeaders"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonInputAndOutputWithTimestampHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-TimestampList"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT"))
                                         :body "" :params
                                         (("headerTimestampList"
                                           . #(1576540098 1576540098)))
                                         :documentation
                                         "Tests requests with timestamp header bindings")
                                        (:id
                                         "RestJsonInputAndOutputWithEnumHeaders"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonInputAndOutputWithIntEnumHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/InputAndOutputWithHeaders" :headers
                                         (("X-IntegerEnum" . "1")
                                          ("X-IntegerEnumList" . "1, 2, 3"))
                                         :body "" :params
                                         (("headerIntegerEnum" . 1)
                                          ("headerIntegerEnumList" . #(1 2 3)))
                                         :documentation
                                         "Tests requests with intEnum header bindings")
                                        (:id
                                         "RestJsonSupportsNaNFloatHeaderInputs"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonSupportsInfinityFloatHeaderInputs"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonSupportsNegativeInfinityFloatHeaderInputs"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id
                                         "RestJsonInputAndOutputWithStringHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-String" . "Hello")
                                          ("X-StringList" . "a, b, c")
                                          ("X-StringSet" . "a, b, c"))
                                         :params
                                         (("headerString" . "Hello")
                                          ("headerStringList" . #("a" "b" "c"))
                                          ("headerStringSet" . #("a" "b" "c")))
                                         :documentation
                                         "Tests responses with string header bindings")
                                        (:id
                                         "RestJsonInputAndOutputWithQuotedStringHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-StringList"
                                           . "\"b,c\", \"\\\"def\\\"\", a"))
                                         :params
                                         (("headerStringList"
                                           . #("b,c" "\"def\"" "a")))
                                         :documentation
                                         "Tests responses with string list header bindings that require quoting")
                                        (:id
                                         "RestJsonInputAndOutputWithNumericHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Byte" . "1") ("X-Short" . "123")
                                          ("X-Integer" . "123")
                                          ("X-Long" . "123")
                                          ("X-Float" . "1.1")
                                          ("X-Double" . "1.1")
                                          ("X-IntegerList" . "1, 2, 3"))
                                         :params
                                         (("headerByte" . 1)
                                          ("headerShort" . 123)
                                          ("headerInteger" . 123)
                                          ("headerLong" . 123)
                                          ("headerFloat" . 1.1d0)
                                          ("headerDouble" . 1.1d0)
                                          ("headerIntegerList" . #(1 2 3)))
                                         :documentation
                                         "Tests responses with numeric header bindings")
                                        (:id
                                         "RestJsonInputAndOutputWithBooleanHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Boolean1" . "true")
                                          ("X-Boolean2" . "false")
                                          ("X-BooleanList"
                                           . "true, false, true"))
                                         :params
                                         (("headerTrueBool" . common-lisp:t)
                                          ("headerFalseBool")
                                          ("headerBooleanList"
                                           . #(common-lisp:t common-lisp:nil
                                               common-lisp:t)))
                                         :documentation
                                         "Tests responses with boolean header bindings")
                                        (:id
                                         "RestJsonInputAndOutputWithTimestampHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-TimestampList"
                                           . "Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT"))
                                         :params
                                         (("headerTimestampList"
                                           . #(1576540098 1576540098)))
                                         :documentation
                                         "Tests responses with timestamp header bindings")
                                        (:id
                                         "RestJsonInputAndOutputWithEnumHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Enum" . "Foo")
                                          ("X-EnumList" . "Foo, Bar, Baz"))
                                         :params
                                         (("headerEnum" . "Foo")
                                          ("headerEnumList"
                                           . #("Foo" "Bar" "Baz")))
                                         :documentation
                                         "Tests responses with enum header bindings")
                                        (:id
                                         "RestJsonInputAndOutputWithIntEnumHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-IntegerEnum" . "1")
                                          ("X-IntegerEnumList" . "1, 2, 3"))
                                         :params
                                         (("headerIntegerEnum" . 1)
                                          ("headerIntegerEnumList" . #(1 2 3)))
                                         :documentation
                                         "Tests responses with intEnum header bindings")
                                        (:id
                                         "RestJsonSupportsNaNFloatHeaderOutputs"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Float" . "NaN")
                                          ("X-Double" . "NaN"))
                                         :params
                                         (("headerFloat" . "NaN")
                                          ("headerDouble" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float header values.")
                                        (:id
                                         "RestJsonSupportsInfinityFloatHeaderOutputs"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Float" . "Infinity")
                                          ("X-Double" . "Infinity"))
                                         :params
                                         (("headerFloat" . "Infinity")
                                          ("headerDouble" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float header values.")
                                        (:id
                                         "RestJsonSupportsNegativeInfinityFloatHeaderOutputs"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Float" . "-Infinity")
                                          ("X-Double" . "-Infinity"))
                                         :params
                                         (("headerFloat" . "-Infinity")
                                          ("headerDouble" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float header values.")))

(smithy/sdk/operation:define-operation json-blobs :shape-name "JsonBlobs"
                                       :input json-blobs-input-output :output
                                       json-blobs-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/JsonBlobs" :request-tests
                                       ((:id "RestJsonJsonBlobs" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/JsonBlobs" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"data\": \"dmFsdWU=\"
}"
                                         :body-media-type "application/json"
                                         :params (("data" . "value"))
                                         :documentation
                                         "Blobs are base64 encoded"))
                                       :response-tests
                                       ((:id "RestJsonJsonBlobs" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"data\": \"dmFsdWU=\"
}"
                                         :body-media-type "application/json"
                                         :params (("data" . "value"))
                                         :documentation
                                         "Blobs are base64 encoded")))

(smithy/sdk/operation:define-operation json-enums :shape-name "JsonEnums"
                                       :input json-enums-input-output :output
                                       json-enums-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/JsonEnums" :request-tests
                                       ((:id "RestJsonJsonEnums" :protocol
                                         "aws.protocols#restJson1" :method
                                         "PUT" :uri "/JsonEnums" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"fooEnum1\": \"Foo\",
    \"fooEnum2\": \"0\",
    \"fooEnum3\": \"1\",
    \"fooEnumList\": [
        \"Foo\",
        \"0\"
    ],
    \"fooEnumSet\": [
        \"Foo\",
        \"0\"
    ],
    \"fooEnumMap\": {
        \"hi\": \"Foo\",
        \"zero\": \"0\"
    }
}"
                                         :body-media-type "application/json"
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
                                       ((:id "RestJsonJsonEnums" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"fooEnum1\": \"Foo\",
    \"fooEnum2\": \"0\",
    \"fooEnum3\": \"1\",
    \"fooEnumList\": [
        \"Foo\",
        \"0\"
    ],
    \"fooEnumSet\": [
        \"Foo\",
        \"0\"
    ],
    \"fooEnumMap\": {
        \"hi\": \"Foo\",
        \"zero\": \"0\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("fooEnum1" . "Foo")
                                          ("fooEnum2" . "0") ("fooEnum3" . "1")
                                          ("fooEnumList" . #("Foo" "0"))
                                          ("fooEnumSet" . #("Foo" "0"))
                                          ("fooEnumMap" ("hi" . "Foo")
                                           ("zero" . "0")))
                                         :documentation
                                         "Serializes simple scalar properties")))

(smithy/sdk/operation:define-operation json-int-enums :shape-name
                                       "JsonIntEnums" :input
                                       json-int-enums-input-output :output
                                       json-int-enums-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/JsonIntEnums" :request-tests
                                       ((:id "RestJsonJsonIntEnums" :protocol
                                         "aws.protocols#restJson1" :method
                                         "PUT" :uri "/JsonIntEnums" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"integerEnum1\": 1,
    \"integerEnum2\": 2,
    \"integerEnum3\": 3,
    \"integerEnumList\": [
        1,
        2,
        3
    ],
    \"integerEnumSet\": [
        1,
        2
    ],
    \"integerEnumMap\": {
        \"abc\": 1,
        \"def\": 2
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("integerEnum1" . 1)
                                          ("integerEnum2" . 2)
                                          ("integerEnum3" . 3)
                                          ("integerEnumList" . #(1 2 3))
                                          ("integerEnumSet" . #(1 2))
                                          ("integerEnumMap" ("abc" . 1)
                                           ("def" . 2)))
                                         :documentation
                                         "Serializes intEnums as integers"))
                                       :response-tests
                                       ((:id "RestJsonJsonIntEnums" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"integerEnum1\": 1,
    \"integerEnum2\": 2,
    \"integerEnum3\": 3,
    \"integerEnumList\": [
        1,
        2,
        3
    ],
    \"integerEnumSet\": [
        1,
        2
    ],
    \"integerEnumMap\": {
        \"abc\": 1,
        \"def\": 2
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("integerEnum1" . 1)
                                          ("integerEnum2" . 2)
                                          ("integerEnum3" . 3)
                                          ("integerEnumList" . #(1 2 3))
                                          ("integerEnumSet" . #(1 2))
                                          ("integerEnumMap" ("abc" . 1)
                                           ("def" . 2)))
                                         :documentation
                                         "Serializes intEnums as integers")))

(smithy/sdk/operation:define-operation json-lists :shape-name "JsonLists"
                                       :input json-lists-input-output :output
                                       json-lists-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/JsonLists" :request-tests
                                       ((:id "RestJsonLists" :protocol
                                         "aws.protocols#restJson1" :method
                                         "PUT" :uri "/JsonLists" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringList\": [
        \"foo\",
        \"bar\"
    ],
    \"stringSet\": [
        \"foo\",
        \"bar\"
    ],
    \"integerList\": [
        1,
        2
    ],
    \"booleanList\": [
        true,
        false
    ],
    \"timestampList\": [
        1398796238,
        1398796238
    ],
    \"enumList\": [
        \"Foo\",
        \"0\"
    ],
    \"intEnumList\": [
        1,
        2
    ],
    \"nestedStringList\": [
        [
            \"foo\",
            \"bar\"
        ],
        [
            \"baz\",
            \"qux\"
        ]
    ],
    \"myStructureList\": [
        {
            \"value\": \"1\",
            \"other\": \"2\"
        },
        {
            \"value\": \"3\",
            \"other\": \"4\"
        }
    ]
}"
                                         :body-media-type "application/json"
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
                                          ("structureList"
                                           . #((("a" . "1") ("b" . "2"))
                                               (("a" . "3") ("b" . "4")))))
                                         :documentation
                                         "Serializes JSON lists")
                                        (:id "RestJsonListsEmpty" :protocol
                                         "aws.protocols#restJson1" :method
                                         "PUT" :uri "/JsonLists" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringList\": []
}"
                                         :body-media-type "application/json"
                                         :params (("stringList" . #()))
                                         :documentation
                                         "Serializes empty JSON lists"))
                                       :response-tests
                                       ((:id "RestJsonLists" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringList\": [
        \"foo\",
        \"bar\"
    ],
    \"stringSet\": [
        \"foo\",
        \"bar\"
    ],
    \"integerList\": [
        1,
        2
    ],
    \"booleanList\": [
        true,
        false
    ],
    \"timestampList\": [
        1398796238,
        1398796238
    ],
    \"enumList\": [
        \"Foo\",
        \"0\"
    ],
    \"intEnumList\": [
        1,
        2
    ],
    \"nestedStringList\": [
        [
            \"foo\",
            \"bar\"
        ],
        [
            \"baz\",
            \"qux\"
        ]
    ],
    \"myStructureList\": [
        {
            \"value\": \"1\",
            \"other\": \"2\"
        },
        {
            \"value\": \"3\",
            \"other\": \"4\"
        }
    ]
}"
                                         :body-media-type "application/json"
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
                                          ("structureList"
                                           . #((("a" . "1") ("b" . "2"))
                                               (("a" . "3") ("b" . "4")))))
                                         :documentation
                                         "Serializes JSON lists")
                                        (:id "RestJsonListsEmpty" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringList\": []
}"
                                         :body-media-type "application/json"
                                         :params (("stringList" . #()))
                                         :documentation
                                         "Serializes empty JSON lists")))

(smithy/sdk/operation:define-operation json-maps :shape-name "JsonMaps" :input
                                       json-maps-input-output :output
                                       json-maps-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/JsonMaps" :request-tests
                                       ((:id "RestJsonJsonMaps" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/JsonMaps" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseStructMap\": {
        \"foo\": {
            \"hi\": \"there\"
        },
        \"baz\": {
            \"hi\": \"bye\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseStructMap"
                                           ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation "Serializes JSON maps")
                                        (:id
                                         "RestJsonSerializesZeroValuesInMaps"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonMaps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseNumberMap\": {
        \"x\": 0
    },
    \"denseBooleanMap\": {
        \"x\": false
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseNumberMap" ("x" . 0))
                                          ("denseBooleanMap" ("x")))
                                         :documentation
                                         "Ensure that 0 and false are sent over the wire in all maps and lists")
                                        (:id "RestJsonSerializesDenseSetMap"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonMaps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"]
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseSetMap" ("x" . #())
                                           ("y" . #("a" "b"))))
                                         :documentation
                                         "A request that contains a dense map of sets."))
                                       :response-tests
                                       ((:id "RestJsonJsonMaps" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseStructMap\": {
        \"foo\": {
            \"hi\": \"there\"
        },
        \"baz\": {
            \"hi\": \"bye\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseStructMap"
                                           ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation
                                         "Deserializes JSON maps")
                                        (:id
                                         "RestJsonDeserializesZeroValuesInMaps"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseNumberMap\": {
        \"x\": 0
    },
    \"denseBooleanMap\": {
        \"x\": false
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseNumberMap" ("x" . 0))
                                          ("denseBooleanMap" ("x")))
                                         :documentation
                                         "Ensure that 0 and false are sent over the wire in all maps and lists")
                                        (:id "RestJsonDeserializesDenseSetMap"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"]
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseSetMap" ("x" . #())
                                           ("y" . #("a" "b"))))
                                         :documentation
                                         "A response that contains a dense map of sets.")
                                        (:id
                                         "RestJsonDeserializesDenseSetMapAndSkipsNull"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"denseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"],
        \"z\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("denseSetMap" ("x" . #())
                                           ("y" . #("a" "b"))))
                                         :documentation
                                         "Clients SHOULD tolerate seeing a null value in a dense map, and they SHOULD
drop the null key-value pair."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation json-timestamps :shape-name
                                       "JsonTimestamps" :input
                                       json-timestamps-input-output :output
                                       json-timestamps-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/JsonTimestamps" :request-tests
                                       ((:id "RestJsonJsonTimestamps" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/JsonTimestamps" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"normal\": 1398796238
}"
                                         :body-media-type "application/json"
                                         :params (("normal" . 1398796238))
                                         :documentation
                                         "Tests how normal timestamps are serialized")
                                        (:id
                                         "RestJsonJsonTimestampsWithDateTimeFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonTimestamps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"dateTime\": \"2014-04-29T18:30:38Z\"
}"
                                         :body-media-type "application/json"
                                         :params (("dateTime" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time works like normal timestamps")
                                        (:id
                                         "RestJsonJsonTimestampsWithDateTimeOnTargetFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonTimestamps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"dateTimeOnTarget\": \"2014-04-29T18:30:38Z\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("dateTimeOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time on the target shape works like normal timestamps")
                                        (:id
                                         "RestJsonJsonTimestampsWithEpochSecondsFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonTimestamps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"epochSeconds\": 1398796238
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("epochSeconds" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds works")
                                        (:id
                                         "RestJsonJsonTimestampsWithEpochSecondsOnTargetFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonTimestamps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"epochSecondsOnTarget\": 1398796238
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("epochSecondsOnTarget"
                                           . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds on the target shape works")
                                        (:id
                                         "RestJsonJsonTimestampsWithHttpDateFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonTimestamps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"httpDate\": \"Tue, 29 Apr 2014 18:30:38 GMT\"
}"
                                         :body-media-type "application/json"
                                         :params (("httpDate" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date works")
                                        (:id
                                         "RestJsonJsonTimestampsWithHttpDateOnTargetFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/JsonTimestamps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"httpDateOnTarget\": \"Tue, 29 Apr 2014 18:30:38 GMT\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("httpDateOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date on the target shape works"))
                                       :response-tests
                                       ((:id "RestJsonJsonTimestamps" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"normal\": 1398796238
}"
                                         :body-media-type "application/json"
                                         :params (("normal" . 1398796238))
                                         :documentation
                                         "Tests how normal timestamps are serialized")
                                        (:id
                                         "RestJsonJsonTimestampsWithDateTimeFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"dateTime\": \"2014-04-29T18:30:38Z\"
}"
                                         :body-media-type "application/json"
                                         :params (("dateTime" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time works like normal timestamps")
                                        (:id
                                         "RestJsonJsonTimestampsWithDateTimeOnTargetFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"dateTimeOnTarget\": \"2014-04-29T18:30:38Z\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("dateTimeOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time on the target shape works like normal timestamps")
                                        (:id
                                         "RestJsonJsonTimestampsWithEpochSecondsFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"epochSeconds\": 1398796238
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("epochSeconds" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds works")
                                        (:id
                                         "RestJsonJsonTimestampsWithEpochSecondsOnTargetFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"epochSecondsOnTarget\": 1398796238
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("epochSecondsOnTarget"
                                           . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds on the target shape works")
                                        (:id
                                         "RestJsonJsonTimestampsWithHttpDateFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"httpDate\": \"Tue, 29 Apr 2014 18:30:38 GMT\"
}"
                                         :body-media-type "application/json"
                                         :params (("httpDate" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date works")
                                        (:id
                                         "RestJsonJsonTimestampsWithHttpDateOnTargetFormat"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"httpDateOnTarget\": \"Tue, 29 Apr 2014 18:30:38 GMT\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("httpDateOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date on the target shape works")))

(smithy/sdk/operation:define-operation json-unions :shape-name "JsonUnions"
                                       :input union-input-output :output
                                       union-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/JsonUnions" :request-tests
                                       ((:id
                                         "RestJsonSerializeStringUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"stringValue\": \"foo\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("stringValue" . "foo")))
                                         :documentation
                                         "Serializes a string union value")
                                        (:id
                                         "RestJsonSerializeBooleanUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"booleanValue\": true
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("booleanValue" . common-lisp:t)))
                                         :documentation
                                         "Serializes a boolean union value")
                                        (:id
                                         "RestJsonSerializeNumberUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"numberValue\": 1
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("numberValue" . 1)))
                                         :documentation
                                         "Serializes a number union value")
                                        (:id "RestJsonSerializeBlobUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"blobValue\": \"Zm9v\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("blobValue" . "foo")))
                                         :documentation
                                         "Serializes a blob union value")
                                        (:id
                                         "RestJsonSerializeTimestampUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"timestampValue\": 1398796238
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("timestampValue" . 1398796238)))
                                         :documentation
                                         "Serializes a timestamp union value")
                                        (:id "RestJsonSerializeEnumUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"enumValue\": \"Foo\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("enumValue" . "Foo")))
                                         :documentation
                                         "Serializes an enum union value")
                                        (:id "RestJsonSerializeListUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"listValue\": [\"foo\", \"bar\"]
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("listValue" . #("foo" "bar"))))
                                         :documentation
                                         "Serializes a list union value")
                                        (:id "RestJsonSerializeMapUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"mapValue\": {
            \"foo\": \"bar\",
            \"spam\": \"eggs\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("mapValue" ("foo" . "bar")
                                            ("spam" . "eggs"))))
                                         :documentation
                                         "Serializes a map union value")
                                        (:id
                                         "RestJsonSerializeStructureUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"structureValue\": {
            \"hi\": \"hello\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("structureValue"
                                            ("hi" . "hello"))))
                                         :documentation
                                         "Serializes a structure union value")
                                        (:id
                                         "RestJsonSerializeRenamedStructureUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/JsonUnions"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"renamedStructureValue\": {
            \"salutation\": \"hello!\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("renamedStructureValue"
                                            ("salutation" . "hello!"))))
                                         :documentation
                                         "Serializes a renamed structure union value"))
                                       :response-tests
                                       ((:id
                                         "RestJsonDeserializeStringUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"stringValue\": \"foo\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("stringValue" . "foo")))
                                         :documentation
                                         "Deserializes a string union value")
                                        (:id
                                         "RestJsonDeserializeBooleanUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"booleanValue\": true
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("booleanValue" . common-lisp:t)))
                                         :documentation
                                         "Deserializes a boolean union value")
                                        (:id
                                         "RestJsonDeserializeNumberUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"numberValue\": 1
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("numberValue" . 1)))
                                         :documentation
                                         "Deserializes a number union value")
                                        (:id
                                         "RestJsonDeserializeBlobUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"blobValue\": \"Zm9v\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("blobValue" . "foo")))
                                         :documentation
                                         "Deserializes a blob union value")
                                        (:id
                                         "RestJsonDeserializeTimestampUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"timestampValue\": 1398796238
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("timestampValue" . 1398796238)))
                                         :documentation
                                         "Deserializes a timestamp union value")
                                        (:id
                                         "RestJsonDeserializeEnumUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"enumValue\": \"Foo\"
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("enumValue" . "Foo")))
                                         :documentation
                                         "Deserializes an enum union value")
                                        (:id
                                         "RestJsonDeserializeListUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"listValue\": [\"foo\", \"bar\"]
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("listValue" . #("foo" "bar"))))
                                         :documentation
                                         "Deserializes a list union value")
                                        (:id "RestJsonDeserializeMapUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"mapValue\": {
            \"foo\": \"bar\",
            \"spam\": \"eggs\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("mapValue" ("foo" . "bar")
                                            ("spam" . "eggs"))))
                                         :documentation
                                         "Deserializes a map union value")
                                        (:id
                                         "RestJsonDeserializeStructureUnionValue"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"structureValue\": {
            \"hi\": \"hello\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("structureValue"
                                            ("hi" . "hello"))))
                                         :documentation
                                         "Deserializes a structure union value")
                                        (:id "RestJsonDeserializeIgnoreType"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"contents\": {
        \"__type\": \"aws.protocoltests.json10#MyUnion\",
        \"structureValue\": {
            \"hi\": \"hello\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents"
                                           ("structureValue"
                                            ("hi" . "hello"))))
                                         :documentation
                                         "Ignores an unrecognized __type property"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation malformed-accept-with-body :shape-name
                                       "MalformedAcceptWithBody" :input
                                       common-lisp:null :output greeting-struct
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/MalformedAcceptWithBody")

(smithy/sdk/operation:define-operation malformed-accept-with-generic-string
                                       :shape-name
                                       "MalformedAcceptWithGenericString"
                                       :input common-lisp:null :output
                                       malformed-accept-with-generic-string-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/MalformedAcceptWithGenericString")

(smithy/sdk/operation:define-operation malformed-accept-with-payload
                                       :shape-name "MalformedAcceptWithPayload"
                                       :input common-lisp:null :output
                                       malformed-accept-with-payload-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/MalformedAcceptWithPayload")

(smithy/sdk/operation:define-operation malformed-blob :shape-name
                                       "MalformedBlob" :input
                                       malformed-blob-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/MalformedBlob")

(smithy/sdk/operation:define-operation malformed-boolean :shape-name
                                       "MalformedBoolean" :input
                                       malformed-boolean-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedBoolean/{booleanInPath}")

(smithy/sdk/operation:define-operation malformed-byte :shape-name
                                       "MalformedByte" :input
                                       malformed-byte-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedByte/{byteInPath}")

(smithy/sdk/operation:define-operation malformed-content-type-with-body
                                       :shape-name
                                       "MalformedContentTypeWithBody" :input
                                       greeting-struct :output common-lisp:null
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/MalformedContentTypeWithBody")

(smithy/sdk/operation:define-operation
 malformed-content-type-with-generic-string :shape-name
 "MalformedContentTypeWithGenericString" :input
 malformed-content-type-with-generic-string-input :output common-lisp:null
 :errors common-lisp:nil :method "POST" :uri
 "/MalformedContentTypeWithGenericString")

(smithy/sdk/operation:define-operation malformed-content-type-with-payload
                                       :shape-name
                                       "MalformedContentTypeWithPayload" :input
                                       malformed-content-type-with-payload-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedContentTypeWithPayload")

(smithy/sdk/operation:define-operation malformed-content-type-without-body
                                       :shape-name
                                       "MalformedContentTypeWithoutBody" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedContentTypeWithoutBody")

(smithy/sdk/operation:define-operation
 malformed-content-type-without-body-empty-input :shape-name
 "MalformedContentTypeWithoutBodyEmptyInput" :input
 malformed-content-type-without-body-empty-input-input :output common-lisp:null
 :errors common-lisp:nil :method "POST" :uri
 "/MalformedContentTypeWithoutBodyEmptyInput")

(smithy/sdk/operation:define-operation malformed-double :shape-name
                                       "MalformedDouble" :input
                                       malformed-double-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedDouble/{doubleInPath}")

(smithy/sdk/operation:define-operation malformed-float :shape-name
                                       "MalformedFloat" :input
                                       malformed-float-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedFloat/{floatInPath}")

(smithy/sdk/operation:define-operation malformed-integer :shape-name
                                       "MalformedInteger" :input
                                       malformed-integer-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedInteger/{integerInPath}")

(smithy/sdk/operation:define-operation malformed-list :shape-name
                                       "MalformedList" :input
                                       malformed-list-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/MalformedList")

(smithy/sdk/operation:define-operation malformed-long :shape-name
                                       "MalformedLong" :input
                                       malformed-long-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedLong/{longInPath}")

(smithy/sdk/operation:define-operation malformed-map :shape-name "MalformedMap"
                                       :input malformed-map-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/MalformedMap")

(smithy/sdk/operation:define-operation malformed-request-body :shape-name
                                       "MalformedRequestBody" :input
                                       malformed-request-body-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedRequestBody")

(smithy/sdk/operation:define-operation malformed-short :shape-name
                                       "MalformedShort" :input
                                       malformed-short-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/MalformedShort/{shortInPath}")

(smithy/sdk/operation:define-operation malformed-string :shape-name
                                       "MalformedString" :input
                                       malformed-string-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/MalformedString")

(smithy/sdk/operation:define-operation malformed-timestamp-body-date-time
                                       :shape-name
                                       "MalformedTimestampBodyDateTime" :input
                                       malformed-timestamp-body-date-time-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampBodyDateTime")

(smithy/sdk/operation:define-operation malformed-timestamp-body-default
                                       :shape-name
                                       "MalformedTimestampBodyDefault" :input
                                       malformed-timestamp-body-default-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampBodyDefault")

(smithy/sdk/operation:define-operation malformed-timestamp-body-http-date
                                       :shape-name
                                       "MalformedTimestampBodyHttpDate" :input
                                       malformed-timestamp-body-http-date-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampBodyHttpDate")

(smithy/sdk/operation:define-operation malformed-timestamp-header-date-time
                                       :shape-name
                                       "MalformedTimestampHeaderDateTime"
                                       :input
                                       malformed-timestamp-header-date-time-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampHeaderDateTime")

(smithy/sdk/operation:define-operation malformed-timestamp-header-default
                                       :shape-name
                                       "MalformedTimestampHeaderDefault" :input
                                       malformed-timestamp-header-default-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampHeaderDefault")

(smithy/sdk/operation:define-operation malformed-timestamp-header-epoch
                                       :shape-name
                                       "MalformedTimestampHeaderEpoch" :input
                                       malformed-timestamp-header-epoch-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampHeaderEpoch")

(smithy/sdk/operation:define-operation malformed-timestamp-path-default
                                       :shape-name
                                       "MalformedTimestampPathDefault" :input
                                       malformed-timestamp-path-default-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampPathDefault/{timestamp}")

(smithy/sdk/operation:define-operation malformed-timestamp-path-epoch
                                       :shape-name
                                       "MalformedTimestampPathEpoch" :input
                                       malformed-timestamp-path-epoch-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampPathEpoch/{timestamp}")

(smithy/sdk/operation:define-operation malformed-timestamp-path-http-date
                                       :shape-name
                                       "MalformedTimestampPathHttpDate" :input
                                       malformed-timestamp-path-http-date-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampPathHttpDate/{timestamp}")

(smithy/sdk/operation:define-operation malformed-timestamp-query-default
                                       :shape-name
                                       "MalformedTimestampQueryDefault" :input
                                       malformed-timestamp-query-default-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampQueryDefault")

(smithy/sdk/operation:define-operation malformed-timestamp-query-epoch
                                       :shape-name
                                       "MalformedTimestampQueryEpoch" :input
                                       malformed-timestamp-query-epoch-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampQueryEpoch")

(smithy/sdk/operation:define-operation malformed-timestamp-query-http-date
                                       :shape-name
                                       "MalformedTimestampQueryHttpDate" :input
                                       malformed-timestamp-query-http-date-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/MalformedTimestampQueryHttpDate")

(smithy/sdk/operation:define-operation malformed-union :shape-name
                                       "MalformedUnion" :input
                                       malformed-union-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri "/MalformedUnion")

(smithy/sdk/operation:define-operation media-type-header :shape-name
                                       "MediaTypeHeader" :input
                                       media-type-header-input :output
                                       media-type-header-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/MediaTypeHeader" :request-tests
                                       ((:id "MediaTypeHeaderInputBase64"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri "/MediaTypeHeader"
                                         :headers (("X-Json" . "dHJ1ZQ=="))
                                         :body "" :params (("json" . "true"))
                                         :documentation
                                         "Headers that target strings with a mediaType are base64 encoded"))
                                       :response-tests
                                       ((:id "MediaTypeHeaderOutputBase64"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Json" . "dHJ1ZQ==")) :params
                                         (("json" . "true")) :documentation
                                         "Headers that target strings with a mediaType are base64 encoded")))

(smithy/sdk/operation:define-operation no-input-and-no-output :shape-name
                                       "NoInputAndNoOutput" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/NoInputAndNoOutput" :request-tests
                                       ((:id "RestJsonNoInputAndNoOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/NoInputAndNoOutput" :body ""
                                         :documentation
                                         "No input serializes no payload. When clients do not need to
serialize any data in the payload, they should omit a payload
altogether.")
                                        (:id "RestJsonNoInputAllowsAccept"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/NoInputAndNoOutput" :headers
                                         (("Accept" . "application/json"))
                                         :body "" :documentation
                                         "Servers should allow the accept header to be set to the
default content-type."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id "RestJsonNoInputAndNoOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "" :documentation
                                         "When an operation does not define output, the service will respond
with an empty payload, and may optionally include the content-type
header.")))

(smithy/sdk/operation:define-operation no-input-and-output :shape-name
                                       "NoInputAndOutput" :input
                                       common-lisp:null :output
                                       no-input-and-output-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/NoInputAndOutputOutput" :request-tests
                                       ((:id "RestJsonNoInputAndOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/NoInputAndOutputOutput" :body ""
                                         :documentation
                                         "No input serializes no payload. When clients do not need to
serialize any data in the payload, they should omit a payload
altogether.")
                                        (:id
                                         "RestJsonNoInputAndOutputAllowsAccept"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/NoInputAndOutputOutput" :headers
                                         (("Accept" . "application/json"))
                                         :body "" :documentation
                                         "Servers should allow the accept header to be set to the
default content-type."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id "RestJsonNoInputAndOutputWithJson"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Operations that define output and do not bind anything to
the payload return a JSON object in the response.")
                                        (:id
                                         "RestJsonNoInputAndOutputNoPayload"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "" :documentation
                                         "This test is similar to RestJsonNoInputAndOutputWithJson, but
it ensures that clients can gracefully handle responses that
omit a JSON payload."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation null-and-empty-headers-client
                                       :shape-name "NullAndEmptyHeadersClient"
                                       :input null-and-empty-headers-io :output
                                       null-and-empty-headers-io :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/NullAndEmptyHeadersClient"
                                       :request-tests
                                       ((:id "RestJsonNullAndEmptyHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/NullAndEmptyHeadersClient" :headers
                                         (("X-B" . "") ("X-C" . ""))
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
                                       ((:id "RestJsonNullAndEmptyHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-B" . "") ("X-C" . ""))
                                         :forbid-headers #("X-A") :params
                                         (("a") ("b" . "") ("c" . #()))
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
                                       ((:id "RestJsonOmitsNullQuery" :protocol
                                         "aws.protocols#restJson1" :method
                                         "GET" :uri
                                         "/OmitsNullSerializesEmptyString"
                                         :body "" :params (("nullValue"))
                                         :documentation
                                         "Omits null query values" :applies-to
                                         "client")
                                        (:id
                                         "RestJsonSerializesEmptyQueryValue"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/OmitsNullSerializesEmptyString"
                                         :query-params #("Empty=") :body ""
                                         :params (("emptyString" . ""))
                                         :documentation
                                         "Serializes empty query strings")
                                        (:id
                                         "RestJsonServersAcceptStaticQueryParamAsEmptyString"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/OmitsNullSerializesEmptyString"
                                         :query-params #("Empty") :body ""
                                         :params (("emptyString" . ""))
                                         :documentation
                                         "Servers accept static query params as empty strings."
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation omits-serializing-empty-lists
                                       :shape-name "OmitsSerializingEmptyLists"
                                       :input
                                       omits-serializing-empty-lists-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/OmitsSerializingEmptyLists"
                                       :request-tests
                                       ((:id
                                         "RestJsonOmitsEmptyListQueryValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OmitsSerializingEmptyLists"
                                         :query-params #() :body "" :params
                                         (("queryStringList" . #())
                                          ("queryIntegerList" . #())
                                          ("queryDoubleList" . #())
                                          ("queryBooleanList" . #())
                                          ("queryTimestampList" . #())
                                          ("queryEnumList" . #())
                                          ("queryIntegerEnumList" . #()))
                                         :documentation
                                         "Supports omitting empty lists.")))

(smithy/sdk/operation:define-operation operation-with-defaults :shape-name
                                       "OperationWithDefaults" :input
                                       operation-with-defaults-input :output
                                       operation-with-defaults-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/OperationWithDefaults" :request-tests
                                       ((:id
                                         "RestJsonClientPopulatesDefaultValuesInInput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithDefaults" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"defaults\": {
        \"defaultString\": \"hi\",
        \"defaultBoolean\": true,
        \"defaultList\": [],
        \"defaultDocumentMap\": {},
        \"defaultDocumentString\": \"hi\",
        \"defaultDocumentBoolean\": true,
        \"defaultDocumentList\": [],
        \"defaultTimestamp\": 0,
        \"defaultBlob\": \"YWJj\",
        \"defaultByte\": 1,
        \"defaultShort\": 1,
        \"defaultInteger\": 10,
        \"defaultLong\": 100,
        \"defaultFloat\": 1.0,
        \"defaultDouble\": 1.0,
        \"defaultMap\": {},
        \"defaultEnum\": \"FOO\",
        \"defaultIntEnum\": 1,
        \"emptyString\": \"\",
        \"falseBoolean\": false,
        \"emptyBlob\": \"\",
        \"zeroByte\": 0,
        \"zeroShort\": 0,
        \"zeroInteger\": 0,
        \"zeroLong\": 0,
        \"zeroFloat\": 0.0,
        \"zeroDouble\": 0.0
    }
}"
                                         :body-media-type "application/json"
                                         :params (("defaults")) :documentation
                                         "Client populates default values in input."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonClientSkipsTopLevelDefaultValuesInInput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithDefaults" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Client skips top level default values in input."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonClientUsesExplicitlyProvidedMemberValuesOverDefaults"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithDefaults" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"defaults\": {
        \"defaultString\": \"bye\",
        \"defaultBoolean\": true,
        \"defaultList\": [\"a\"],
        \"defaultDocumentMap\": {\"name\": \"Jack\"},
        \"defaultDocumentString\": \"bye\",
        \"defaultDocumentBoolean\": true,
        \"defaultDocumentList\": [\"b\"],
        \"defaultNullDocument\": \"notNull\",
        \"defaultTimestamp\": 1,
        \"defaultBlob\": \"aGk=\",
        \"defaultByte\": 2,
        \"defaultShort\": 2,
        \"defaultInteger\": 20,
        \"defaultLong\": 200,
        \"defaultFloat\": 2.0,
        \"defaultDouble\": 2.0,
        \"defaultMap\": {\"name\": \"Jack\"},
        \"defaultEnum\": \"BAR\",
        \"defaultIntEnum\": 2,
        \"emptyString\": \"foo\",
        \"falseBoolean\": true,
        \"emptyBlob\": \"aGk=\",
        \"zeroByte\": 1,
        \"zeroShort\": 1,
        \"zeroInteger\": 1,
        \"zeroLong\": 1,
        \"zeroFloat\": 1.0,
        \"zeroDouble\": 1.0
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("defaults" ("defaultString" . "bye")
                                           ("defaultBoolean" . common-lisp:t)
                                           ("defaultList" . #("a"))
                                           ("defaultDocumentMap"
                                            ("name" . "Jack"))
                                           ("defaultDocumentString" . "bye")
                                           ("defaultDocumentBoolean"
                                            . common-lisp:t)
                                           ("defaultDocumentList" . #("b"))
                                           ("defaultNullDocument" . "notNull")
                                           ("defaultTimestamp" . 1)
                                           ("defaultBlob" . "hi")
                                           ("defaultByte" . 2)
                                           ("defaultShort" . 2)
                                           ("defaultInteger" . 20)
                                           ("defaultLong" . 200)
                                           ("defaultFloat" . 2.0d0)
                                           ("defaultDouble" . 2.0d0)
                                           ("defaultMap" ("name" . "Jack"))
                                           ("defaultEnum" . "BAR")
                                           ("defaultIntEnum" . 2)
                                           ("emptyString" . "foo")
                                           ("falseBoolean" . common-lisp:t)
                                           ("emptyBlob" . "hi")
                                           ("zeroByte" . 1) ("zeroShort" . 1)
                                           ("zeroInteger" . 1) ("zeroLong" . 1)
                                           ("zeroFloat" . 1.0d0)
                                           ("zeroDouble" . 1.0d0)))
                                         :documentation
                                         "Client uses explicitly provided member values over defaults"
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonServerPopulatesDefaultsWhenMissingInRequestBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithDefaults" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
\"defaults\": {}
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("defaults" ("defaultString" . "hi")
                                           ("defaultBoolean" . common-lisp:t)
                                           ("defaultList" . #())
                                           ("defaultDocumentMap")
                                           ("defaultDocumentString" . "hi")
                                           ("defaultDocumentBoolean"
                                            . common-lisp:t)
                                           ("defaultDocumentList" . #())
                                           ("defaultTimestamp" . 0)
                                           ("defaultBlob" . "abc")
                                           ("defaultByte" . 1)
                                           ("defaultShort" . 1)
                                           ("defaultInteger" . 10)
                                           ("defaultLong" . 100)
                                           ("defaultFloat" . 1.0d0)
                                           ("defaultDouble" . 1.0d0)
                                           ("defaultMap")
                                           ("defaultEnum" . "FOO")
                                           ("defaultIntEnum" . 1)
                                           ("emptyString" . "")
                                           ("falseBoolean") ("emptyBlob" . "")
                                           ("zeroByte" . 0) ("zeroShort" . 0)
                                           ("zeroInteger" . 0) ("zeroLong" . 0)
                                           ("zeroFloat" . 0.0d0)
                                           ("zeroDouble" . 0.0d0))
                                          ("topLevelDefault" . "hi")
                                          ("otherTopLevelDefault" . 0))
                                         :documentation
                                         "Server populates default values when missing in request body."
                                         :tags #("defaults") :applies-to
                                         "server")
                                        (:id
                                         "RestJsonClientUsesExplicitlyProvidedValuesInTopLevel"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithDefaults" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"topLevelDefault\": \"hi\",
    \"otherTopLevelDefault\": 0
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("topLevelDefault" . "hi")
                                          ("otherTopLevelDefault" . 0))
                                         :documentation
                                         "Any time a value is provided for a member in the top level of input, it is used, regardless of if its the default."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonClientIgnoresNonTopLevelDefaultsOnMembersWithClientOptional"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithDefaults" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"clientOptionalDefaults\": {}
}"
                                         :body-media-type "application/json"
                                         :params (("clientOptionalDefaults"))
                                         :documentation
                                         "Typically, non top-level members would have defaults filled in, but if they have the clientOptional trait, the defaults should be ignored."
                                         :tags #("defaults") :applies-to
                                         "client"))
                                       :response-tests
                                       ((:id
                                         "RestJsonClientPopulatesDefaultsValuesWhenMissingInResponse"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("defaultString" . "hi")
                                          ("defaultBoolean" . common-lisp:t)
                                          ("defaultList" . #())
                                          ("defaultDocumentMap")
                                          ("defaultDocumentString" . "hi")
                                          ("defaultDocumentBoolean"
                                           . common-lisp:t)
                                          ("defaultDocumentList" . #())
                                          ("defaultTimestamp" . 0)
                                          ("defaultBlob" . "abc")
                                          ("defaultByte" . 1)
                                          ("defaultShort" . 1)
                                          ("defaultInteger" . 10)
                                          ("defaultLong" . 100)
                                          ("defaultFloat" . 1.0d0)
                                          ("defaultDouble" . 1.0d0)
                                          ("defaultMap")
                                          ("defaultEnum" . "FOO")
                                          ("defaultIntEnum" . 1)
                                          ("emptyString" . "") ("falseBoolean")
                                          ("emptyBlob" . "") ("zeroByte" . 0)
                                          ("zeroShort" . 0) ("zeroInteger" . 0)
                                          ("zeroLong" . 0)
                                          ("zeroFloat" . 0.0d0)
                                          ("zeroDouble" . 0.0d0))
                                         :documentation
                                         "Client populates default values when missing in response."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonClientIgnoresDefaultValuesIfMemberValuesArePresentInResponse"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"defaultString\": \"bye\",
    \"defaultBoolean\": false,
    \"defaultList\": [\"a\"],
    \"defaultDocumentMap\": {\"name\": \"Jack\"},
    \"defaultDocumentString\": \"bye\",
    \"defaultDocumentBoolean\": false,
    \"defaultDocumentList\": [\"b\"],
    \"defaultNullDocument\": \"notNull\",
    \"defaultTimestamp\": 2,
    \"defaultBlob\": \"aGk=\",
    \"defaultByte\": 2,
    \"defaultShort\": 2,
    \"defaultInteger\": 20,
    \"defaultLong\": 200,
    \"defaultFloat\": 2.0,
    \"defaultDouble\": 2.0,
    \"defaultMap\": {\"name\": \"Jack\"},
    \"defaultEnum\": \"BAR\",
    \"defaultIntEnum\": 2,
    \"emptyString\": \"foo\",
    \"falseBoolean\": true,
    \"emptyBlob\": \"aGk=\",
    \"zeroByte\": 1,
    \"zeroShort\": 1,
    \"zeroInteger\": 1,
    \"zeroLong\": 1,
    \"zeroFloat\": 1.0,
    \"zeroDouble\": 1.0
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("defaultString" . "bye")
                                          ("defaultBoolean")
                                          ("defaultList" . #("a"))
                                          ("defaultDocumentMap"
                                           ("name" . "Jack"))
                                          ("defaultDocumentString" . "bye")
                                          ("defaultDocumentBoolean")
                                          ("defaultDocumentList" . #("b"))
                                          ("defaultNullDocument" . "notNull")
                                          ("defaultTimestamp" . 2)
                                          ("defaultBlob" . "hi")
                                          ("defaultByte" . 2)
                                          ("defaultShort" . 2)
                                          ("defaultInteger" . 20)
                                          ("defaultLong" . 200)
                                          ("defaultFloat" . 2.0d0)
                                          ("defaultDouble" . 2.0d0)
                                          ("defaultMap" ("name" . "Jack"))
                                          ("defaultEnum" . "BAR")
                                          ("defaultIntEnum" . 2)
                                          ("emptyString" . "foo")
                                          ("falseBoolean" . common-lisp:t)
                                          ("emptyBlob" . "hi") ("zeroByte" . 1)
                                          ("zeroShort" . 1) ("zeroInteger" . 1)
                                          ("zeroLong" . 1)
                                          ("zeroFloat" . 1.0d0)
                                          ("zeroDouble" . 1.0d0))
                                         :documentation
                                         "Client ignores default values if member values are present in the response."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonServerPopulatesDefaultsInResponseWhenMissingInParams"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"defaultString\": \"hi\",
    \"defaultBoolean\": true,
    \"defaultList\": [],
    \"defaultDocumentMap\": {},
    \"defaultDocumentString\": \"hi\",
    \"defaultDocumentBoolean\": true,
    \"defaultDocumentList\": [],
    \"defaultTimestamp\": 0,
    \"defaultBlob\": \"YWJj\",
    \"defaultByte\": 1,
    \"defaultShort\": 1,
    \"defaultInteger\": 10,
    \"defaultLong\": 100,
    \"defaultFloat\": 1.0,
    \"defaultDouble\": 1.0,
    \"defaultMap\": {},
    \"defaultEnum\": \"FOO\",
    \"defaultIntEnum\": 1,
    \"emptyString\": \"\",
    \"falseBoolean\": false,
    \"emptyBlob\": \"\",
    \"zeroByte\": 0,
    \"zeroShort\": 0,
    \"zeroInteger\": 0,
    \"zeroLong\": 0,
    \"zeroFloat\": 0.0,
    \"zeroDouble\": 0.0
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Server populates default values in response when missing in params."
                                         :tags #("defaults") :applies-to
                                         "server")))

(smithy/sdk/operation:define-operation operation-with-nested-structure
                                       :shape-name
                                       "OperationWithNestedStructure" :input
                                       operation-with-nested-structure-input
                                       :output
                                       operation-with-nested-structure-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/OperationWithNestedStructure"
                                       :request-tests
                                       ((:id
                                         "RestJsonClientPopulatesNestedDefaultValuesWhenMissing"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithNestedStructure"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"topLevel\": {
        \"dialog\": {
            \"language\": \"en\",
            \"greeting\": \"hi\"
        },
        \"dialogList\": [
            {
                \"greeting\": \"hi\"
            },
            {
                \"greeting\": \"hi\",
                \"farewell\": {
                    \"phrase\": \"bye\"
                }
            },
            {
                \"language\": \"it\",
                \"greeting\": \"ciao\",
                \"farewell\": {
                    \"phrase\": \"arrivederci\"
                }
            }
        ],
        \"dialogMap\": {
            \"emptyDialog\": {
                \"greeting\": \"hi\"
            },
            \"partialEmptyDialog\": {
                \"language\": \"en\",
                \"greeting\": \"hi\",
                \"farewell\": {
                    \"phrase\": \"bye\"
                }
            },
            \"nonEmptyDialog\": {
                \"greeting\": \"konnichiwa\",
                \"farewell\": {
                    \"phrase\": \"sayonara\"
                }
            }
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("topLevel"
                                           ("dialog" ("language" . "en"))
                                           ("dialogList"
                                            . #(common-lisp:nil (("farewell"))
                                                (("language" . "it")
                                                 ("greeting" . "ciao")
                                                 ("farewell"
                                                  ("phrase"
                                                   . "arrivederci")))))
                                           ("dialogMap" ("emptyDialog")
                                            ("partialEmptyDialog"
                                             ("language" . "en") ("farewell"))
                                            ("nonEmptyDialog"
                                             ("greeting" . "konnichiwa")
                                             ("farewell"
                                              ("phrase" . "sayonara"))))))
                                         :documentation
                                         "Client populates nested default values when missing."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonServerPopulatesNestedDefaultsWhenMissingInRequestBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/OperationWithNestedStructure"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"topLevel\": {
        \"dialog\": {
            \"language\": \"en\"
        },
        \"dialogList\": [
            {
            },
            {
                \"farewell\": {}
            },
            {
                \"language\": \"it\",
                \"greeting\": \"ciao\",
                \"farewell\": {
                    \"phrase\": \"arrivederci\"
                }
            }
        ],
        \"dialogMap\": {
            \"emptyDialog\": {
            },
            \"partialEmptyDialog\": {
                \"language\": \"en\",
                \"farewell\": {}
            },
            \"nonEmptyDialog\": {
                \"greeting\": \"konnichiwa\",
                \"farewell\": {
                    \"phrase\": \"sayonara\"
                }
            }
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("topLevel"
                                           ("dialog" ("language" . "en")
                                            ("greeting" . "hi"))
                                           ("dialogList"
                                            . #((("greeting" . "hi"))
                                                (("greeting" . "hi")
                                                 ("farewell"
                                                  ("phrase" . "bye")))
                                                (("language" . "it")
                                                 ("greeting" . "ciao")
                                                 ("farewell"
                                                  ("phrase"
                                                   . "arrivederci")))))
                                           ("dialogMap"
                                            ("emptyDialog" ("greeting" . "hi"))
                                            ("partialEmptyDialog"
                                             ("language" . "en")
                                             ("greeting" . "hi")
                                             ("farewell" ("phrase" . "bye")))
                                            ("nonEmptyDialog"
                                             ("greeting" . "konnichiwa")
                                             ("farewell"
                                              ("phrase" . "sayonara"))))))
                                         :documentation
                                         "Server populates nested default values when missing in request body."
                                         :tags #("defaults") :applies-to
                                         "server"))
                                       :response-tests
                                       ((:id
                                         "RestJsonClientPopulatesNestedDefaultsWhenMissingInResponseBody"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"dialog\": {
        \"language\": \"en\"
    },
    \"dialogList\": [
        {
        },
        {
            \"farewell\": {}
        },
        {
            \"language\": \"it\",
            \"greeting\": \"ciao\",
            \"farewell\": {
                \"phrase\": \"arrivederci\"
            }
        }
    ],
    \"dialogMap\": {
        \"emptyDialog\": {
        },
        \"partialEmptyDialog\": {
            \"language\": \"en\",
            \"farewell\": {}
        },
        \"nonEmptyDialog\": {
            \"greeting\": \"konnichiwa\",
            \"farewell\": {
                \"phrase\": \"sayonara\"
            }
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("dialog" ("language" . "en")
                                           ("greeting" . "hi"))
                                          ("dialogList"
                                           . #((("greeting" . "hi"))
                                               (("greeting" . "hi")
                                                ("farewell"
                                                 ("phrase" . "bye")))
                                               (("language" . "it")
                                                ("greeting" . "ciao")
                                                ("farewell"
                                                 ("phrase" . "arrivederci")))))
                                          ("dialogMap"
                                           ("emptyDialog" ("greeting" . "hi"))
                                           ("partialEmptyDialog"
                                            ("language" . "en")
                                            ("greeting" . "hi")
                                            ("farewell" ("phrase" . "bye")))
                                           ("nonEmptyDialog"
                                            ("greeting" . "konnichiwa")
                                            ("farewell"
                                             ("phrase" . "sayonara")))))
                                         :documentation
                                         "Client populates nested default values when missing in response body."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "RestJsonServerPopulatesNestedDefaultValuesWhenMissingInInResponseParams"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"dialog\": {
        \"language\": \"en\",
        \"greeting\": \"hi\"
    },
    \"dialogList\": [
        {
            \"greeting\": \"hi\"
        },
        {
            \"greeting\": \"hi\",
            \"farewell\": {
                \"phrase\": \"bye\"
            }
        },
        {
            \"language\": \"it\",
            \"greeting\": \"ciao\",
            \"farewell\": {
                \"phrase\": \"arrivederci\"
            }
        }
    ],
    \"dialogMap\": {
        \"emptyDialog\": {
            \"greeting\": \"hi\"
        },
        \"partialEmptyDialog\": {
            \"language\": \"en\",
            \"greeting\": \"hi\",
            \"farewell\": {
                \"phrase\": \"bye\"
            }
        },
        \"nonEmptyDialog\": {
            \"greeting\": \"konnichiwa\",
            \"farewell\": {
                \"phrase\": \"sayonara\"
            }
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("dialog" ("language" . "en"))
                                          ("dialogList"
                                           . #(common-lisp:nil (("farewell"))
                                               (("language" . "it")
                                                ("greeting" . "ciao")
                                                ("farewell"
                                                 ("phrase" . "arrivederci")))))
                                          ("dialogMap" ("emptyDialog")
                                           ("partialEmptyDialog"
                                            ("language" . "en") ("farewell"))
                                           ("nonEmptyDialog"
                                            ("greeting" . "konnichiwa")
                                            ("farewell"
                                             ("phrase" . "sayonara")))))
                                         :documentation
                                         "Server populates nested default values when missing in response params."
                                         :tags #("defaults") :applies-to
                                         "server")))

(smithy/sdk/operation:define-operation post-player-action :shape-name
                                       "PostPlayerAction" :input
                                       post-player-action-input :output
                                       post-player-action-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/PostPlayerAction" :request-tests
                                       ((:id "RestJsonInputUnionWithUnitMember"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/PostPlayerAction" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"action\": {
        \"quit\": {}
    }
}"
                                         :body-media-type "application/json"
                                         :params (("action" ("quit")))
                                         :documentation
                                         "Unit types in unions are serialized like normal structures in requests."))
                                       :response-tests
                                       ((:id
                                         "RestJsonOutputUnionWithUnitMember"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"action\": {
        \"quit\": {}
    }
}"
                                         :body-media-type "application/json"
                                         :params (("action" ("quit")))
                                         :documentation
                                         "Unit types in unions are serialized like normal structures in responses.")))

(smithy/sdk/operation:define-operation post-union-with-json-name :shape-name
                                       "PostUnionWithJsonName" :input
                                       post-union-with-json-name-input :output
                                       post-union-with-json-name-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/PostUnionWithJsonName" :request-tests
                                       ((:id "PostUnionWithJsonNameRequest1"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/PostUnionWithJsonName" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"value\": {
        \"FOO\": \"hi\"
    }
}"
                                         :body-media-type "application/json"
                                         :params (("value" ("foo" . "hi")))
                                         :documentation
                                         "Tests that jsonName works with union members.")
                                        (:id "PostUnionWithJsonNameRequest2"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/PostUnionWithJsonName" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"value\": {
        \"_baz\": \"hi\"
    }
}"
                                         :body-media-type "application/json"
                                         :params (("value" ("baz" . "hi")))
                                         :documentation
                                         "Tests that jsonName works with union members.")
                                        (:id "PostUnionWithJsonNameRequest3"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/PostUnionWithJsonName" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"value\": {
        \"bar\": \"hi\"
    }
}"
                                         :body-media-type "application/json"
                                         :params (("value" ("bar" . "hi")))
                                         :documentation
                                         "Tests that jsonName works with union members."))
                                       :response-tests
                                       ((:id "PostUnionWithJsonNameResponse1"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"value\": {
        \"FOO\": \"hi\"
    }
}"
                                         :body-media-type "application/json"
                                         :params (("value" ("foo" . "hi")))
                                         :documentation
                                         "Tests that jsonName works with union members.")
                                        (:id "PostUnionWithJsonNameResponse2"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"value\": {
        \"_baz\": \"hi\"
    }
}"
                                         :body-media-type "application/json"
                                         :params (("value" ("baz" . "hi")))
                                         :documentation
                                         "Tests that jsonName works with union members.")
                                        (:id "PostUnionWithJsonNameResponse3"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"value\": {
        \"bar\": \"hi\"
    }
}"
                                         :body-media-type "application/json"
                                         :params (("value" ("bar" . "hi")))
                                         :documentation
                                         "Tests that jsonName works with union members.")))

(smithy/sdk/operation:define-operation put-with-content-encoding :shape-name
                                       "PutWithContentEncoding" :input
                                       put-with-content-encoding-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/requestcompression/putcontentwithencoding"
                                       :request-tests
                                       ((:id
                                         "SDKAppliedContentEncoding_restJson1"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/requestcompression/putcontentwithencoding"
                                         :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("data"
                                           . "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
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header.")
                                        (:id
                                         "SDKAppendedGzipAfterProvidedEncoding_restJson1"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id
                                         "RestJsonQueryIdempotencyTokenAutoFill"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/QueryIdempotencyTokenAutoFill"
                                         :query-params
                                         #("token=00000000-0000-4000-8000-000000000000")
                                         :body "" :documentation
                                         "Automatically adds idempotency token when not set"
                                         :applies-to "client")
                                        (:id
                                         "RestJsonQueryIdempotencyTokenAutoFillIsSet"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id "RestJsonQueryParamsStringListMap"
                                         :protocol "aws.protocols#restJson1"
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
                                         "RestJsonServersQueryParamsStringListMap"
                                         :protocol "aws.protocols#restJson1"
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
                                       ((:id "RestJsonQueryPrecedence"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/Precedence"
                                         :query-params
                                         #("bar=named" "qux=alsoFromMap") :body
                                         "" :params
                                         (("foo" . "named")
                                          ("baz" ("bar" . "fromMap")
                                           ("qux" . "alsoFromMap")))
                                         :documentation
                                         "Prefer named query parameters when serializing"
                                         :applies-to "client")
                                        (:id
                                         "RestJsonServersPutAllQueryParamsInMap"
                                         :protocol "aws.protocols#restJson1"
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
                                       recursive-shapes-input-output :output
                                       recursive-shapes-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/RecursiveShapes" :request-tests
                                       ((:id "RestJsonRecursiveShapes"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/RecursiveShapes"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"nested\": {
        \"foo\": \"Foo1\",
        \"nested\": {
            \"bar\": \"Bar1\",
            \"recursiveMember\": {
                \"foo\": \"Foo2\",
                \"nested\": {
                    \"bar\": \"Bar2\"
                }
            }
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("nested" ("foo" . "Foo1")
                                           ("nested" ("bar" . "Bar1")
                                            ("recursiveMember" ("foo" . "Foo2")
                                             ("nested" ("bar" . "Bar2"))))))
                                         :documentation
                                         "Serializes recursive structures"))
                                       :response-tests
                                       ((:id "RestJsonRecursiveShapes"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"nested\": {
        \"foo\": \"Foo1\",
        \"nested\": {
            \"bar\": \"Bar1\",
            \"recursiveMember\": {
                \"foo\": \"Foo2\",
                \"nested\": {
                    \"bar\": \"Bar2\"
                }
            }
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("nested" ("foo" . "Foo1")
                                           ("nested" ("bar" . "Bar1")
                                            ("recursiveMember" ("foo" . "Foo2")
                                             ("nested" ("bar" . "Bar2"))))))
                                         :documentation
                                         "Serializes recursive structures")))

(smithy/sdk/operation:define-operation response-code-http-fallback :shape-name
                                       "ResponseCodeHttpFallback" :input
                                       response-code-http-fallback-input-output
                                       :output
                                       response-code-http-fallback-input-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/responseCodeHttpFallback" :code
                                       201 :response-tests
                                       ((:id
                                         "RestJsonHttpResponseCodeNotSetFallsBackToHttpCode"
                                         :protocol "aws.protocols#restJson1"
                                         :code 201 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "This test ensures that servers fall back to the code set
by @http if @httpResponseCode is not set."
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation response-code-required :shape-name
                                       "ResponseCodeRequired" :input
                                       common-lisp:null :output
                                       response-code-required-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/responseCodeRequired" :code 200
                                       :response-tests
                                       ((:id "RestJsonHttpResponseCodeRequired"
                                         :protocol "aws.protocols#restJson1"
                                         :code 201 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("responseCode" . 201))
                                         :documentation
                                         "This test ensures that servers handle @httpResponseCode being @required."
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation simple-scalar-properties :shape-name
                                       "SimpleScalarProperties" :input
                                       simple-scalar-properties-input-output
                                       :output
                                       simple-scalar-properties-input-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/SimpleScalarProperties"
                                       :request-tests
                                       ((:id "RestJsonSimpleScalarProperties"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/json")
                                          ("X-Foo" . "Foo"))
                                         :body "{
    \"stringValue\": \"string\",
    \"trueBooleanValue\": true,
    \"falseBooleanValue\": false,
    \"byteValue\": 1,
    \"shortValue\": 2,
    \"integerValue\": 3,
    \"longValue\": 4,
    \"floatValue\": 5.5,
    \"DoubleDribble\": 6.5
}"
                                         :body-media-type "application/json"
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
                                         "RestJsonDoesntSerializeNullStructureValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("stringValue")) :documentation
                                         "Rest Json should not serialize null structure values"
                                         :applies-to "client")
                                        (:id
                                         "RestJsonServersDontSerializeNullStructureValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": null
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Rest Json should not deserialize null structure values"
                                         :applies-to "server")
                                        (:id "RestJsonSupportsNaNFloatInputs"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"floatValue\": \"NaN\",
    \"DoubleDribble\": \"NaN\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "RestJsonSupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"floatValue\": \"Infinity\",
    \"DoubleDribble\": \"Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "RestJsonSupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"floatValue\": \"-Infinity\",
    \"DoubleDribble\": \"-Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values."))
                                       :response-tests
                                       ((:id "RestJsonSimpleScalarProperties"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type" . "application/json")
                                          ("X-Foo" . "Foo"))
                                         :body "{
    \"stringValue\": \"string\",
    \"trueBooleanValue\": true,
    \"falseBooleanValue\": false,
    \"byteValue\": 1,
    \"shortValue\": 2,
    \"integerValue\": 3,
    \"longValue\": 4,
    \"floatValue\": 5.5,
    \"DoubleDribble\": 6.5
}"
                                         :body-media-type "application/json"
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
                                         "RestJsonDoesntDeserializeNullStructureValues"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"stringValue\": null
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Rest Json should not deserialize null structure values"
                                         :applies-to "client")
                                        (:id
                                         "RestJsonServersDontSerializeNullStructureValues"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("stringValue")) :documentation
                                         "Rest Json should not serialize null structure values"
                                         :applies-to "server")
                                        (:id "RestJsonSupportsNaNFloatInputs"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"floatValue\": \"NaN\",
    \"DoubleDribble\": \"NaN\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "RestJsonSupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"floatValue\": \"Infinity\",
    \"DoubleDribble\": \"Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "RestJsonSupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"floatValue\": \"-Infinity\",
    \"DoubleDribble\": \"-Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values.")))

(smithy/sdk/operation:define-operation sparse-json-lists :shape-name
                                       "SparseJsonLists" :input
                                       sparse-json-lists-input-output :output
                                       sparse-json-lists-input-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/SparseJsonLists" :request-tests
                                       ((:id "RestJsonSparseListsSerializeNull"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri "/SparseJsonLists"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseStringList\": [
        null,
        \"hi\"
    ],
    \"sparseShortList\": [
        null,
        2
    ]
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseStringList"
                                           . #(common-lisp:nil "hi"))
                                          ("sparseShortList"
                                           . #(common-lisp:nil 2)))
                                         :documentation
                                         "Serializes null values in sparse lists"))
                                       :response-tests
                                       ((:id "RestJsonSparseListsSerializeNull"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseStringList\": [
        null,
        \"hi\"
    ],
    \"sparseShortList\": [
        null,
        2
    ]
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseStringList"
                                           . #(common-lisp:nil "hi"))
                                          ("sparseShortList"
                                           . #(common-lisp:nil 2)))
                                         :documentation
                                         "Serializes null values in sparse lists")))

(smithy/sdk/operation:define-operation sparse-json-maps :shape-name
                                       "SparseJsonMaps" :input
                                       sparse-json-maps-input-output :output
                                       sparse-json-maps-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/SparseJsonMaps" :request-tests
                                       ((:id "RestJsonSparseJsonMaps" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/SparseJsonMaps" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseStructMap\": {
        \"foo\": {
            \"hi\": \"there\"
        },
        \"baz\": {
            \"hi\": \"bye\"
        }
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseStructMap"
                                           ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation "Serializes JSON maps")
                                        (:id
                                         "RestJsonSerializesSparseNullMapValues"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/SparseJsonMaps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseBooleanMap\": {
        \"x\": null
    },
    \"sparseNumberMap\": {
        \"x\": null
    },
    \"sparseStringMap\": {
        \"x\": null
    },
    \"sparseStructMap\": {
        \"x\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseBooleanMap" ("x"))
                                          ("sparseNumberMap" ("x"))
                                          ("sparseStringMap" ("x"))
                                          ("sparseStructMap" ("x")))
                                         :documentation
                                         "Serializes JSON map values in sparse maps")
                                        (:id
                                         "RestJsonSerializesZeroValuesInSparseMaps"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/SparseJsonMaps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseNumberMap\": {
        \"x\": 0
    },
    \"sparseBooleanMap\": {
        \"x\": false
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseNumberMap" ("x" . 0))
                                          ("sparseBooleanMap" ("x")))
                                         :documentation
                                         "Ensure that 0 and false are sent over the wire in all maps and lists")
                                        (:id "RestJsonSerializesSparseSetMap"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/SparseJsonMaps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"]
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseSetMap" ("x" . #())
                                           ("y" . #("a" "b"))))
                                         :documentation
                                         "A request that contains a sparse map of sets")
                                        (:id
                                         "RestJsonSerializesSparseSetMapAndRetainsNull"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/SparseJsonMaps"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"],
        \"z\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseSetMap" ("x" . #())
                                           ("y" . #("a" "b")) ("z")))
                                         :documentation
                                         "A request that contains a sparse map of sets."))
                                       :response-tests
                                       ((:id "RestJsonSparseJsonMaps" :protocol
                                         "aws.protocols#restJson1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseStructMap\": {
        \"foo\": {
            \"hi\": \"there\"
        },
        \"baz\": {
            \"hi\": \"bye\"
        }
   }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseStructMap"
                                           ("foo" ("hi" . "there"))
                                           ("baz" ("hi" . "bye"))))
                                         :documentation
                                         "Deserializes JSON maps")
                                        (:id
                                         "RestJsonDeserializesSparseNullMapValues"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseBooleanMap\": {
        \"x\": null
    },
    \"sparseNumberMap\": {
        \"x\": null
    },
    \"sparseStringMap\": {
        \"x\": null
    },
    \"sparseStructMap\": {
        \"x\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseBooleanMap" ("x"))
                                          ("sparseNumberMap" ("x"))
                                          ("sparseStringMap" ("x"))
                                          ("sparseStructMap" ("x")))
                                         :documentation
                                         "Deserializes null JSON map values")
                                        (:id
                                         "RestJsonDeserializesZeroValuesInSparseMaps"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseNumberMap\": {
        \"x\": 0
    },
    \"sparseBooleanMap\": {
        \"x\": false
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseNumberMap" ("x" . 0))
                                          ("sparseBooleanMap" ("x")))
                                         :documentation
                                         "Ensure that 0 and false are sent over the wire in all maps and lists")
                                        (:id "RestJsonDeserializesSparseSetMap"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"]
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseSetMap" ("x" . #())
                                           ("y" . #("a" "b"))))
                                         :documentation
                                         "A response that contains a sparse map of sets")
                                        (:id
                                         "RestJsonDeserializesSparseSetMapAndRetainsNull"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :body "{
    \"sparseSetMap\": {
        \"x\": [],
        \"y\": [\"a\", \"b\"],
        \"z\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseSetMap" ("x" . #())
                                           ("y" . #("a" "b")) ("z")))
                                         :documentation
                                         "A response that contains a sparse map of sets.")))

(smithy/sdk/operation:define-operation streaming-traits :shape-name
                                       "StreamingTraits" :input
                                       streaming-traits-input-output :output
                                       streaming-traits-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/StreamingTraits" :request-tests
                                       ((:id "RestJsonStreamingTraitsWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/StreamingTraits"
                                         :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type"
                                           . "application/octet-stream"))
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload")
                                        (:id
                                         "RestJsonStreamingTraitsWithNoBlobBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/StreamingTraits"
                                         :headers (("X-Foo" . "Foo")) :body ""
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")) :documentation
                                         "Serializes an empty blob in the HTTP payload"))
                                       :response-tests
                                       ((:id "RestJsonStreamingTraitsWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type"
                                           . "application/octet-stream"))
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload")
                                        (:id
                                         "RestJsonStreamingTraitsWithNoBlobBody"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers (("X-Foo" . "Foo"))
                                         :body "" :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")) :documentation
                                         "Serializes an empty blob in the HTTP payload")))

(smithy/sdk/operation:define-operation streaming-traits-require-length
                                       :shape-name
                                       "StreamingTraitsRequireLength" :input
                                       streaming-traits-require-length-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/StreamingTraitsRequireLength"
                                       :request-tests
                                       ((:id
                                         "RestJsonStreamingTraitsRequireLengthWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/StreamingTraitsRequireLength"
                                         :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type"
                                           . "application/octet-stream"))
                                         :require-headers #("Content-Length")
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a required length")
                                        (:id
                                         "RestJsonStreamingTraitsRequireLengthWithNoBlobBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/StreamingTraitsRequireLength"
                                         :headers (("X-Foo" . "Foo")) :body ""
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")) :documentation
                                         "Serializes an empty blob in the HTTP payload")))

(smithy/sdk/operation:define-operation streaming-traits-with-media-type
                                       :shape-name
                                       "StreamingTraitsWithMediaType" :input
                                       streaming-traits-with-media-type-input-output
                                       :output
                                       streaming-traits-with-media-type-input-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/StreamingTraitsWithMediaType"
                                       :request-tests
                                       ((:id
                                         "RestJsonStreamingTraitsWithMediaTypeWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/StreamingTraitsWithMediaType"
                                         :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "text/plain"))
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a content-type"))
                                       :response-tests
                                       ((:id
                                         "RestJsonStreamingTraitsWithMediaTypeWithBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
                                         (("X-Foo" . "Foo")
                                          ("Content-Type" . "text/plain"))
                                         :body "blobby blob blob"
                                         :body-media-type
                                         "application/octet-stream" :params
                                         (("foo" . "Foo")
                                          ("blob" . "blobby blob blob"))
                                         :documentation
                                         "Serializes a blob in the HTTP payload with a content-type")))

(smithy/sdk/operation:define-operation test-body-structure :shape-name
                                       "TestBodyStructure" :input
                                       test-body-structure-input-output :output
                                       test-body-structure-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/body" :request-tests
                                       ((:id "RestJsonTestBodyStructure"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/body" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :require-headers #("Content-Length")
                                         :body "{\"testConfig\":
    {\"timeout\": 10}
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("testConfig" ("timeout" . 10)))
                                         :documentation
                                         "Serializes a structure")
                                        (:id "RestJsonHttpWithEmptyBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/body" :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :require-headers #("Content-Length")
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Serializes an empty structure in the body")))

(smithy/sdk/operation:define-operation test-get-no-input-no-payload :shape-name
                                       "TestGetNoInputNoPayload" :input
                                       common-lisp:null :output
                                       test-no-payload-input-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/no_input_no_payload" :request-tests
                                       ((:id "RestJsonHttpGetWithNoInput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri
                                         "/no_input_no_payload" :forbid-headers
                                         #("Content-Type" "Content-Length")
                                         :body "" :documentation
                                         "Serializes a GET request for an operation with no input, and therefore no modeled body")))

(smithy/sdk/operation:define-operation test-get-no-payload :shape-name
                                       "TestGetNoPayload" :input
                                       test-no-payload-input-output :output
                                       test-no-payload-input-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/no_payload" :request-tests
                                       ((:id "RestJsonHttpGetWithNoModeledBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri "/no_payload"
                                         :forbid-headers
                                         #("Content-Length" "Content-Type")
                                         :body "" :documentation
                                         "Serializes a GET request with no modeled body")
                                        (:id
                                         "RestJsonHttpGetWithHeaderMemberNoModeledBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "GET" :uri "/no_payload"
                                         :headers
                                         (("X-Amz-Test-Id" . "t-12345"))
                                         :forbid-headers
                                         #("Content-Length" "Content-Type")
                                         :body "" :params
                                         (("testId" . "t-12345"))
                                         :documentation
                                         "Serializes a GET request with header member but no modeled body")))

(smithy/sdk/operation:define-operation test-payload-blob :shape-name
                                       "TestPayloadBlob" :input
                                       test-payload-blob-input-output :output
                                       test-payload-blob-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/blob_payload" :request-tests
                                       ((:id "RestJsonHttpWithEmptyBlobPayload"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/blob_payload"
                                         :body "" :body-media-type
                                         "application/octet-stream"
                                         :documentation
                                         "Serializes a payload targeting an empty blob")
                                        (:id "RestJsonTestPayloadBlob"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/blob_payload"
                                         :headers
                                         (("Content-Type" . "image/jpg"))
                                         :require-headers #("Content-Length")
                                         :body "1234" :body-media-type
                                         "image/jpg" :params
                                         (("contentType" . "image/jpg")
                                          ("data" . "1234"))
                                         :documentation
                                         "Serializes a payload targeting a blob")))

(smithy/sdk/operation:define-operation test-payload-structure :shape-name
                                       "TestPayloadStructure" :input
                                       test-payload-structure-input-output
                                       :output
                                       test-payload-structure-input-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/payload" :request-tests
                                       ((:id
                                         "RestJsonHttpWithEmptyStructurePayload"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/payload"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :require-headers #("Content-Length")
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Serializes a payload targeting an empty structure")
                                        (:id "RestJsonTestPayloadStructure"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/payload"
                                         :headers
                                         (("Content-Type"
                                           . "application/json"))
                                         :require-headers #("Content-Length")
                                         :body "{\"data\": 25
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("payloadConfig" ("data" . 25)))
                                         :documentation
                                         "Serializes a payload targeting a structure")
                                        (:id
                                         "RestJsonHttpWithHeadersButNoPayload"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/payload"
                                         :headers
                                         (("Content-Type" . "application/json")
                                          ("X-Amz-Test-Id" . "t-12345"))
                                         :require-headers #("Content-Length")
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("testId" . "t-12345"))
                                         :documentation
                                         "Serializes an request with header members but no payload")))

(smithy/sdk/operation:define-operation test-post-no-input-no-payload
                                       :shape-name "TestPostNoInputNoPayload"
                                       :input common-lisp:null :output
                                       test-no-payload-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/no_input_no_payload" :request-tests
                                       ((:id "RestJsonHttpPostWithNoInput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/no_input_no_payload" :forbid-headers
                                         #("Content-Type") :body ""
                                         :documentation
                                         "Serializes a POST request for an operation with no input, and therefore no modeled body")))

(smithy/sdk/operation:define-operation test-post-no-payload :shape-name
                                       "TestPostNoPayload" :input
                                       test-no-payload-input-output :output
                                       test-no-payload-input-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/no_payload" :request-tests
                                       ((:id
                                         "RestJsonHttpPostWithNoModeledBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/no_payload"
                                         :forbid-headers #("Content-Type")
                                         :body "" :documentation
                                         "Serializes a POST request with no modeled body")
                                        (:id
                                         "RestJsonHttpWithPostHeaderMemberNoModeledBody"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri "/no_payload"
                                         :headers
                                         (("X-Amz-Test-Id" . "t-12345"))
                                         :forbid-headers #("Content-Type")
                                         :body "" :params
                                         (("testId" . "t-12345"))
                                         :documentation
                                         "Serializes a POST request with header member but no modeled body")))

(smithy/sdk/operation:define-operation timestamp-format-headers :shape-name
                                       "TimestampFormatHeaders" :input
                                       timestamp-format-headers-io :output
                                       timestamp-format-headers-io :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/TimestampFormatHeaders" :request-tests
                                       ((:id "RestJsonTimestampFormatHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/TimestampFormatHeaders" :headers
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
                                       ((:id "RestJsonTimestampFormatHeaders"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :headers
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
                                         :params
                                         (("memberEpochSeconds" . 1576540098)
                                          ("memberHttpDate" . 1576540098)
                                          ("memberDateTime" . 1576540098)
                                          ("defaultFormat" . 1576540098)
                                          ("targetEpochSeconds" . 1576540098)
                                          ("targetHttpDate" . 1576540098)
                                          ("targetDateTime" . 1576540098))
                                         :documentation
                                         "Tests how timestamp response headers are serialized")))

(smithy/sdk/operation:define-operation unit-input-and-output :shape-name
                                       "UnitInputAndOutput" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/UnitInputAndOutput" :request-tests
                                       ((:id "RestJsonUnitInputAndOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/UnitInputAndOutput" :body ""
                                         :documentation
                                         "A unit type input serializes no payload. When clients do not
need to serialize any data in the payload, they should omit
a payload altogether.")
                                        (:id "RestJsonUnitInputAllowsAccept"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/UnitInputAndOutput" :headers
                                         (("Accept" . "application/json"))
                                         :body "" :documentation
                                         "Servers should allow the accept header to be set to the
default content-type."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id
                                         "RestJsonUnitInputAndOutputNoOutput"
                                         :protocol "aws.protocols#restJson1"
                                         :code 200 :body "" :documentation
                                         "When an operation defines Unit output, the service will respond
with an empty payload, and may optionally include the content-type
header.")))

(rove:deftest restjson
  (pira/tests/runner:run-service-tests))
