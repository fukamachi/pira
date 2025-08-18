(uiop/package:define-package #:pira/tests/protocols/json (:use)
                             (:export #:complex-nested-error-data
                              #:content-type-parameters #:datetime-offsets
                              #:datetime-offsets-output #:document
                              #:empty-operation #:empty-struct
                              #:endpoint-operation
                              #:endpoint-with-host-label-operation
                              #:fractional-seconds #:fractional-seconds-output
                              #:greeting-with-errors
                              #:greeting-with-errors-output #:host-label-input
                              #:host-with-path-operation #:json-enums
                              #:json-enums-input-output #:json-int-enums
                              #:json-int-enums-input-output #:json-protocol
                              #:json-unions #:json-value #:kitchen-sink
                              #:kitchen-sink-operation #:list-of-kitchen-sinks
                              #:list-of-list-of-strings
                              #:list-of-maps-of-strings #:list-of-strings
                              #:list-of-structs #:map-of-kitchen-sinks
                              #:map-of-lists-of-strings #:map-of-map-of-strings
                              #:map-of-strings #:map-of-structs #:my-union
                              #:null-operation #:null-operation-input-output
                              #:operation-with-optional-input-output
                              #:put-and-get-inline-documents
                              #:put-and-get-inline-documents-input-output
                              #:put-with-content-encoding
                              #:simple-scalar-properties
                              #:simple-scalar-properties-input-output
                              #:simple-struct #:sparse-nulls-operation
                              #:sparse-nulls-operation-input-output
                              #:struct-with-json-name #:union-input-output))
(common-lisp:in-package #:pira/tests/protocols/json)

(smithy/sdk/service:define-service json-protocol :shape-name "JsonProtocol"
                                   :version "2018-01-01" :title
                                   "Sample Json 1.1 Protocol Service"
                                   :operations
                                   '(content-type-parameters datetime-offsets
                                     empty-operation endpoint-operation
                                     endpoint-with-host-label-operation
                                     fractional-seconds greeting-with-errors
                                     host-with-path-operation json-enums
                                     json-int-enums json-unions
                                     kitchen-sink-operation null-operation
                                     operation-with-optional-input-output
                                     put-and-get-inline-documents
                                     put-with-content-encoding
                                     simple-scalar-properties
                                     sparse-nulls-operation)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Json Protocol")
                                      ("arnNamespace" . "jsonprotocol")
                                      ("cloudFormationName" . "JsonProtocol")
                                      ("cloudTrailEventSource"
                                       . "jsonprotocol.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "jsonprotocol"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error complex-error common-lisp:nil
                                ((top-level :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "TopLevel")
                                 (nested :target-type complex-nested-error-data
                                  :member-name "Nested"))
                                (:shape-name "ComplexError") (:error-code 400))

(smithy/sdk/shapes:define-structure complex-nested-error-data common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Foo" :json-name "Fooooo"))
                                    (:shape-name "ComplexNestedErrorData"))

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

(smithy/sdk/shapes:define-type document smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure empty-struct common-lisp:nil
                                    common-lisp:nil (:shape-name "EmptyStruct"))

(smithy/sdk/shapes:define-error error-with-members common-lisp:nil
                                ((code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Code")
                                 (complex-data :target-type kitchen-sink
                                  :member-name "ComplexData")
                                 (integer-field :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "IntegerField")
                                 (list-field :target-type list-of-strings
                                  :member-name "ListField")
                                 (map-field :target-type map-of-strings
                                  :member-name "MapField")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (string-field :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "StringField"))
                                (:shape-name "ErrorWithMembers")
                                (:error-code 400))

(smithy/sdk/shapes:define-error error-without-members common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ErrorWithoutMembers")
                                (:error-code 500))

(smithy/sdk/shapes:define-error foo-error common-lisp:nil common-lisp:nil
                                (:shape-name "FooError") (:error-code 500))

(smithy/sdk/shapes:define-structure fractional-seconds-output common-lisp:nil
                                    ((datetime :target-type date-time
                                      :member-name "datetime"))
                                    (:shape-name "FractionalSecondsOutput"))

(smithy/sdk/shapes:define-structure greeting-with-errors-output common-lisp:nil
                                    ((greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting"))
                                    (:shape-name "GreetingWithErrorsOutput"))

(smithy/sdk/shapes:define-input host-label-input common-lisp:nil
                                ((label :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "label"
                                  :host-label common-lisp:t))
                                (:shape-name "HostLabelInput"))

(smithy/sdk/shapes:define-error invalid-greeting common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InvalidGreeting")
                                (:error-code 400))

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

(smithy/sdk/shapes:define-structure json-int-enums-input-output common-lisp:nil
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
                                    (:shape-name "JsonIntEnumsInputOutput"))

(smithy/sdk/shapes:define-type json-value smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-structure kitchen-sink common-lisp:nil
                                    ((blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "Blob")
                                     (boolean :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Boolean")
                                     (double :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Double")
                                     (empty-struct :target-type empty-struct
                                      :member-name "EmptyStruct")
                                     (float :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "Float")
                                     (httpdate-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "HttpdateTimestamp"
                                      :timestamp-format "http-date")
                                     (integer :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Integer")
                                     (iso8601timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "Iso8601Timestamp"
                                      :timestamp-format "date-time")
                                     (json-value :target-type json-value
                                      :member-name "JsonValue")
                                     (list-of-lists :target-type
                                      list-of-list-of-strings :member-name
                                      "ListOfLists")
                                     (list-of-maps-of-strings :target-type
                                      list-of-maps-of-strings :member-name
                                      "ListOfMapsOfStrings")
                                     (list-of-strings :target-type
                                      list-of-strings :member-name
                                      "ListOfStrings")
                                     (list-of-structs :target-type
                                      list-of-structs :member-name
                                      "ListOfStructs")
                                     (long :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "Long")
                                     (map-of-lists-of-strings :target-type
                                      map-of-lists-of-strings :member-name
                                      "MapOfListsOfStrings")
                                     (map-of-maps :target-type
                                      map-of-map-of-strings :member-name
                                      "MapOfMaps")
                                     (map-of-strings :target-type
                                      map-of-strings :member-name
                                      "MapOfStrings")
                                     (map-of-structs :target-type
                                      map-of-structs :member-name
                                      "MapOfStructs")
                                     (recursive-list :target-type
                                      list-of-kitchen-sinks :member-name
                                      "RecursiveList")
                                     (recursive-map :target-type
                                      map-of-kitchen-sinks :member-name
                                      "RecursiveMap")
                                     (recursive-struct :target-type
                                      kitchen-sink :member-name
                                      "RecursiveStruct")
                                     (simple-struct :target-type simple-struct
                                      :member-name "SimpleStruct")
                                     (string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "String")
                                     (struct-with-json-name :target-type
                                      struct-with-json-name :member-name
                                      "StructWithJsonName")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "Timestamp")
                                     (unix-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UnixTimestamp"
                                      :timestamp-format "epoch-seconds"))
                                    (:shape-name "KitchenSink"))

(smithy/sdk/shapes:define-list list-of-kitchen-sinks :member kitchen-sink)

(smithy/sdk/shapes:define-list list-of-list-of-strings :member list-of-strings)

(smithy/sdk/shapes:define-list list-of-maps-of-strings :member map-of-strings)

(smithy/sdk/shapes:define-list list-of-strings :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-of-structs :member simple-struct)

(smithy/sdk/shapes:define-map map-of-kitchen-sinks :key
                              smithy/sdk/smithy-types:string :value
                              kitchen-sink)

(smithy/sdk/shapes:define-map map-of-lists-of-strings :key
                              smithy/sdk/smithy-types:string :value
                              list-of-strings)

(smithy/sdk/shapes:define-map map-of-map-of-strings :key
                              smithy/sdk/smithy-types:string :value
                              map-of-strings)

(smithy/sdk/shapes:define-map map-of-strings :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map map-of-structs :key
                              smithy/sdk/smithy-types:string :value
                              simple-struct)

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
                                  :member-name "structureValue"))
                                (:shape-name "MyUnion"))

(smithy/sdk/shapes:define-structure null-operation-input-output common-lisp:nil
                                    ((string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "string"))
                                    (:shape-name "NullOperationInputOutput"))

(smithy/sdk/shapes:define-input operation-with-optional-input-output-input
                                common-lisp:nil
                                ((value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Value"))
                                (:shape-name
                                 "OperationWithOptionalInputOutputInput"))

(smithy/sdk/shapes:define-output operation-with-optional-input-output-output
                                 common-lisp:nil
                                 ((value :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Value"))
                                 (:shape-name
                                  "OperationWithOptionalInputOutputOutput"))

(smithy/sdk/shapes:define-structure put-and-get-inline-documents-input-output
                                    common-lisp:nil
                                    ((inline-document :target-type document
                                      :member-name "inlineDocument"))
                                    (:shape-name
                                     "PutAndGetInlineDocumentsInputOutput"))

(smithy/sdk/shapes:define-input put-with-content-encoding-input common-lisp:nil
                                ((encoding :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "encoding" :http-header "Content-Encoding")
                                 (data :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "data"))
                                (:shape-name "PutWithContentEncodingInput"))

(smithy/sdk/shapes:define-structure simple-scalar-properties-input-output
                                    common-lisp:nil
                                    ((float-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "floatValue")
                                     (double-value :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "doubleValue"))
                                    (:shape-name
                                     "SimpleScalarPropertiesInputOutput"))

(smithy/sdk/shapes:define-structure simple-struct common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value"))
                                    (:shape-name "SimpleStruct"))

(smithy/sdk/shapes:define-structure sparse-nulls-operation-input-output
                                    common-lisp:nil
                                    ((sparse-string-list :target-type
                                      sparse-string-list :member-name
                                      "sparseStringList")
                                     (sparse-string-map :target-type
                                      sparse-string-map :member-name
                                      "sparseStringMap"))
                                    (:shape-name
                                     "SparseNullsOperationInputOutput"))

(smithy/sdk/shapes:define-structure struct-with-json-name common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value" :json-name
                                      "RenamedMember"))
                                    (:shape-name "StructWithJsonName"))

(smithy/sdk/shapes:define-structure union-input-output common-lisp:nil
                                    ((contents :target-type my-union
                                      :member-name "contents"))
                                    (:shape-name "UnionInputOutput"))

(smithy/sdk/operation:define-operation content-type-parameters :shape-name
                                       "ContentTypeParameters" :input
                                       content-type-parameters-input :output
                                       content-type-parameters-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson11MustSupportParametersInContentType"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1; charset=utf-8")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.ContentTypeParameters"))
                                         :body "{\"value\":5}" :body-media-type
                                         "application/json" :params
                                         (("value" . 5)) :documentation
                                         "A server should ignore parameters added to the content type"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation datetime-offsets :shape-name
                                       "DatetimeOffsets" :input
                                       common-lisp:null :output
                                       datetime-offsets-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id
                                         "AwsJson11DateTimeWithNegativeOffset"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "      {
          \"datetime\": \"2019-12-16T22:48:18-01:00\"
      }
"
                                         :body-media-type "application/json"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets"
                                         :applies-to "client")
                                        (:id
                                         "AwsJson11DateTimeWithPositiveOffset"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "      {
          \"datetime\": \"2019-12-17T00:48:18+01:00\"
      }
"
                                         :body-media-type "application/json"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation empty-operation :shape-name
                                       "EmptyOperation" :input common-lisp:null
                                       :output common-lisp:null :errors
                                       common-lisp:nil :request-tests
                                       ((:id "sends_requests_to_slash"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.EmptyOperation"))
                                         :documentation "Sends requests to /")
                                        (:id
                                         "includes_x_amz_target_and_content_type"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.EmptyOperation"))
                                         :documentation
                                         "Includes X-Amz-Target header and Content-Type")
                                        (:id
                                         "json_1_1_client_sends_empty_payload_for_no_input_shape"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.EmptyOperation"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Clients must always send an empty JSON object payload for
operations with no input (that is, `{}`). While AWS service
implementations support requests with no payload or requests
that send `{}`, always sending `{}` from the client is
preferred for forward compatibility in case input is ever
added to an operation.")
                                        (:id
                                         "json_1_1_service_supports_empty_payload_for_no_input_shape"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.EmptyOperation"))
                                         :body "" :documentation
                                         "Service implementations must support no payload or an empty
object payload for operations that define no input. However,
despite the lack of a payload, a Content-Type header is still
required in order for the service to properly detect the
protocol."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id "handles_empty_output_shape"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "When no output is defined, the service is expected to return
an empty payload, however, client must ignore a JSON payload
if one is returned. This ensures that if output is added later,
then it will not break the client."
                                         :applies-to "client")
                                        (:id "handles_unexpected_json_output"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"foo\": true
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "This client-only test builds on handles_empty_output_shape,
by including unexpected fields in the JSON. A client
needs to ignore JSON output that is empty or that contains
JSON object data."
                                         :applies-to "client")
                                        (:id
                                         "json_1_1_service_responds_with_no_payload"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "" :documentation
                                         "When no output is defined, the service is expected to return
an empty payload. Despite the lack of a payload, the service
is expected to always send a Content-Type header. Clients must
handle cases where a service returns a JSON object and where
a service returns no JSON at all.")))

(smithy/sdk/operation:define-operation endpoint-operation :shape-name
                                       "EndpointOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :endpoint-host-prefix "foo."
                                       :request-tests
                                       ((:id "AwsJson11EndpointTrait" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :host "example.com"
                                         :resolved-host "foo.example.com"
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.EndpointOperation"))
                                         :body "{}" :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait.")))

(smithy/sdk/operation:define-operation endpoint-with-host-label-operation
                                       :shape-name
                                       "EndpointWithHostLabelOperation" :input
                                       host-label-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :endpoint-host-prefix "foo.{label}."
                                       :request-tests
                                       ((:id
                                         "AwsJson11EndpointTraitWithHostLabel"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :host
                                         "example.com" :resolved-host
                                         "foo.bar.example.com" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.EndpointWithHostLabelOperation"))
                                         :body "{\"label\": \"bar\"}"
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
                                       common-lisp:nil :response-tests
                                       ((:id
                                         "AwsJson11DateTimeWithFractionalSeconds"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "      {
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
                                        invalid-greeting))

(smithy/sdk/operation:define-operation host-with-path-operation :shape-name
                                       "HostWithPathOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "AwsJson11HostWithPath" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/custom/" :host
                                         "example.com/custom" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.HostWithPathOperation"))
                                         :body "{}" :documentation
                                         "Custom endpoints supplied by users can have paths"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation json-enums :shape-name "JsonEnums"
                                       :input json-enums-input-output :output
                                       json-enums-input-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id "AwsJson11Enums" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonEnums"))
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
                                       ((:id "AwsJson11Enums" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                       common-lisp:nil :request-tests
                                       ((:id "AwsJson11IntEnums" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonIntEnums"))
                                         :body "{
    \"intEnum1\": 1,
    \"intEnum2\": 2,
    \"intEnum3\": 3,
    \"intEnumList\": [
        1,
        2
    ],
    \"intEnumSet\": [
        1,
        2
    ],
    \"intEnumMap\": {
        \"a\": 1,
        \"b\": 2
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("intEnum1" . 1) ("intEnum2" . 2)
                                          ("intEnum3" . 3)
                                          ("intEnumList" . #(1 2))
                                          ("intEnumSet" . #(1 2))
                                          ("intEnumMap" ("a" . 1) ("b" . 2)))
                                         :documentation
                                         "Serializes simple scalar properties"))
                                       :response-tests
                                       ((:id "AwsJson11IntEnums" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonIntEnums"))
                                         :body "{
    \"intEnum1\": 1,
    \"intEnum2\": 2,
    \"intEnum3\": 3,
    \"intEnumList\": [
        1,
        2
    ],
    \"intEnumSet\": [
        1,
        2
    ],
    \"intEnumMap\": {
        \"a\": 1,
        \"b\": 2
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("intEnum1" . 1) ("intEnum2" . 2)
                                          ("intEnum3" . 3)
                                          ("intEnumList" . #(1 2))
                                          ("intEnumSet" . #(1 2))
                                          ("intEnumMap" ("a" . 1) ("b" . 2)))
                                         :documentation
                                         "Serializes simple scalar properties")))

(smithy/sdk/operation:define-operation json-unions :shape-name "JsonUnions"
                                       :input union-input-output :output
                                       union-input-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson11SerializeStringUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                         "AwsJson11SerializeBooleanUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                         "AwsJson11SerializeNumberUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                        (:id "AwsJson11SerializeBlobUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                         "AwsJson11SerializeTimestampUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                        (:id "AwsJson11SerializeEnumUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                        (:id "AwsJson11SerializeListUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                        (:id "AwsJson11SerializeMapUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                         "AwsJson11SerializeStructureUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.JsonUnions"))
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
                                         "Serializes a structure union value"))
                                       :response-tests
                                       ((:id
                                         "AwsJson11DeserializeStringUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeBooleanUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeNumberUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeBlobUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeTimestampUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeEnumUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeListUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                        (:id
                                         "AwsJson11DeserializeMapUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                         "AwsJson11DeserializeStructureUnionValue"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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
                                        (:id "AwsJson11DeserializeIgnoreType"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
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

(smithy/sdk/operation:define-operation kitchen-sink-operation :shape-name
                                       "KitchenSinkOperation" :input
                                       kitchen-sink :output kitchen-sink
                                       :errors
                                       (error-with-members
                                        error-without-members)
                                       :request-tests
                                       ((:id "serializes_string_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"String\":\"abc xyz\"}"
                                         :body-media-type "application/json"
                                         :params (("String" . "abc xyz"))
                                         :documentation
                                         "Serializes string shapes")
                                        (:id
                                         "serializes_string_shapes_with_jsonvalue_trait"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"JsonValue\":\"{\\\"string\\\":\\\"value\\\",\\\"number\\\":1234.5,\\\"boolTrue\\\":true,\\\"boolFalse\\\":false,\\\"array\\\":[1,2,3,4],\\\"object\\\":{\\\"key\\\":\\\"value\\\"},\\\"null\\\":null}\"}"
                                         :body-media-type "application/json"
                                         :params
                                         (("JsonValue"
                                           . "{\"string\":\"value\",\"number\":1234.5,\"boolTrue\":true,\"boolFalse\":false,\"array\":[1,2,3,4],\"object\":{\"key\":\"value\"},\"null\":null}"))
                                         :documentation
                                         "Serializes string shapes with jsonvalue trait")
                                        (:id "serializes_integer_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Integer\":1234}"
                                         :body-media-type "application/json"
                                         :params (("Integer" . 1234))
                                         :documentation
                                         "Serializes integer shapes")
                                        (:id "serializes_long_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Long\":999999999999}"
                                         :body-media-type "application/json"
                                         :params (("Long" . 999999999999))
                                         :documentation
                                         "Serializes long shapes")
                                        (:id "serializes_float_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Float\":1234.5}"
                                         :body-media-type "application/json"
                                         :params (("Float" . 1234.5d0))
                                         :documentation
                                         "Serializes float shapes")
                                        (:id "serializes_double_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Double\":1234.5}"
                                         :body-media-type "application/json"
                                         :params (("Double" . 1234.5d0))
                                         :documentation
                                         "Serializes double shapes")
                                        (:id "serializes_blob_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"Blob\":\"YmluYXJ5LXZhbHVl\"}"
                                         :body-media-type "application/json"
                                         :params (("Blob" . "binary-value"))
                                         :documentation
                                         "Serializes blob shapes")
                                        (:id "serializes_boolean_shapes_true"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Boolean\":true}"
                                         :body-media-type "application/json"
                                         :params (("Boolean" . common-lisp:t))
                                         :documentation
                                         "Serializes boolean shapes (true)")
                                        (:id "serializes_boolean_shapes_false"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Boolean\":false}"
                                         :body-media-type "application/json"
                                         :params (("Boolean")) :documentation
                                         "Serializes boolean shapes (false)")
                                        (:id "serializes_timestamp_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"Timestamp\":946845296}"
                                         :body-media-type "application/json"
                                         :params (("Timestamp" . 946845296))
                                         :documentation
                                         "Serializes timestamp shapes")
                                        (:id
                                         "serializes_timestamp_shapes_with_iso8601_timestampformat"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"Iso8601Timestamp\":\"2000-01-02T20:34:56Z\"}"
                                         :body-media-type "application/json"
                                         :params
                                         (("Iso8601Timestamp" . 946845296))
                                         :documentation
                                         "Serializes timestamp shapes with iso8601 timestampFormat")
                                        (:id
                                         "serializes_timestamp_shapes_with_httpdate_timestampformat"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"HttpdateTimestamp\":\"Sun, 02 Jan 2000 20:34:56 GMT\"}"
                                         :body-media-type "application/json"
                                         :params
                                         (("HttpdateTimestamp" . 946845296))
                                         :documentation
                                         "Serializes timestamp shapes with httpdate timestampFormat")
                                        (:id
                                         "serializes_timestamp_shapes_with_unixtimestamp_timestampformat"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"UnixTimestamp\":946845296}"
                                         :body-media-type "application/json"
                                         :params
                                         (("UnixTimestamp" . 946845296))
                                         :documentation
                                         "Serializes timestamp shapes with unixTimestamp timestampFormat")
                                        (:id "serializes_list_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"ListOfStrings\":[\"abc\",\"mno\",\"xyz\"]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfStrings"
                                           . #("abc" "mno" "xyz")))
                                         :documentation
                                         "Serializes list shapes")
                                        (:id "serializes_empty_list_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"ListOfStrings\":[]}"
                                         :body-media-type "application/json"
                                         :params (("ListOfStrings" . #()))
                                         :documentation
                                         "Serializes empty list shapes")
                                        (:id "serializes_list_of_map_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"ListOfMapsOfStrings\":[{\"foo\":\"bar\"},{\"abc\":\"xyz\"},{\"red\":\"blue\"}]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfMapsOfStrings"
                                           . #((("foo" . "bar"))
                                               (("abc" . "xyz"))
                                               (("red" . "blue")))))
                                         :documentation
                                         "Serializes list of map shapes")
                                        (:id
                                         "serializes_list_of_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"ListOfStructs\":[{\"Value\":\"abc\"},{\"Value\":\"mno\"},{\"Value\":\"xyz\"}]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfStructs"
                                           . #((("Value" . "abc"))
                                               (("Value" . "mno"))
                                               (("Value" . "xyz")))))
                                         :documentation
                                         "Serializes list of structure shapes")
                                        (:id
                                         "serializes_list_of_recursive_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"RecursiveList\":[{\"RecursiveList\":[{\"RecursiveList\":[{\"Integer\":123}]}]}]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("RecursiveList"
                                           . #((("RecursiveList"
                                                 . #((("RecursiveList"
                                                       . #((("Integer"
                                                             . 123)))))))))))
                                         :documentation
                                         "Serializes list of recursive structure shapes")
                                        (:id "serializes_map_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"MapOfStrings\":{\"abc\":\"xyz\",\"mno\":\"hjk\"}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfStrings" ("abc" . "xyz")
                                           ("mno" . "hjk")))
                                         :documentation
                                         "Serializes map shapes")
                                        (:id "serializes_empty_map_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"MapOfStrings\":{}}"
                                         :body-media-type "application/json"
                                         :params (("MapOfStrings"))
                                         :documentation
                                         "Serializes empty map shapes")
                                        (:id "serializes_map_of_list_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"MapOfListsOfStrings\":{\"abc\":[\"abc\",\"xyz\"],\"mno\":[\"xyz\",\"abc\"]}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfListsOfStrings"
                                           ("abc" . #("abc" "xyz"))
                                           ("mno" . #("xyz" "abc"))))
                                         :documentation
                                         "Serializes map of list shapes")
                                        (:id
                                         "serializes_map_of_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"MapOfStructs\":{\"key1\":{\"Value\":\"value-1\"},\"key2\":{\"Value\":\"value-2\"}}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfStructs"
                                           ("key1" ("Value" . "value-1"))
                                           ("key2" ("Value" . "value-2"))))
                                         :documentation
                                         "Serializes map of structure shapes")
                                        (:id
                                         "serializes_map_of_recursive_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"RecursiveMap\":{\"key1\":{\"RecursiveMap\":{\"key2\":{\"RecursiveMap\":{\"key3\":{\"Boolean\":false}}}}}}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("RecursiveMap"
                                           ("key1"
                                            ("RecursiveMap"
                                             ("key2"
                                              ("RecursiveMap"
                                               ("key3" ("Boolean"))))))))
                                         :documentation
                                         "Serializes map of recursive structure shapes")
                                        (:id "serializes_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"SimpleStruct\":{\"Value\":\"abc\"}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("SimpleStruct" ("Value" . "abc")))
                                         :documentation
                                         "Serializes structure shapes")
                                        (:id
                                         "serializes_structure_members_with_locationname_traits"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"StructWithJsonName\":{\"Value\":\"some-value\"}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("StructWithJsonName"
                                           ("Value" . "some-value")))
                                         :documentation
                                         "Serializes structure members with locationName traits")
                                        (:id
                                         "serializes_empty_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"SimpleStruct\":{}}"
                                         :body-media-type "application/json"
                                         :params (("SimpleStruct"))
                                         :documentation
                                         "Serializes empty structure shapes")
                                        (:id
                                         "serializes_structure_which_have_no_members"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body "{\"EmptyStruct\":{}}"
                                         :body-media-type "application/json"
                                         :params (("EmptyStruct"))
                                         :documentation
                                         "Serializes structure which have no members")
                                        (:id
                                         "serializes_recursive_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.KitchenSinkOperation"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "{\"String\":\"top-value\",\"Boolean\":false,\"RecursiveStruct\":{\"String\":\"nested-value\",\"Boolean\":true,\"RecursiveList\":[{\"String\":\"string-only\"},{\"RecursiveStruct\":{\"MapOfStrings\":{\"color\":\"red\",\"size\":\"large\"}}}]}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("String" . "top-value") ("Boolean")
                                          ("RecursiveStruct"
                                           ("String" . "nested-value")
                                           ("Boolean" . common-lisp:t)
                                           ("RecursiveList"
                                            . #((("String" . "string-only"))
                                                (("RecursiveStruct"
                                                  ("MapOfStrings"
                                                   ("color" . "red")
                                                   ("size" . "large"))))))))
                                         :documentation
                                         "Serializes recursive structure shapes"))
                                       :response-tests
                                       ((:id
                                         "parses_operations_with_empty_json_bodies"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Parses operations with empty JSON bodies")
                                        (:id "parses_string_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"String\":\"string-value\"}"
                                         :body-media-type "application/json"
                                         :params (("String" . "string-value"))
                                         :documentation "Parses string shapes")
                                        (:id "parses_integer_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"Integer\":1234}"
                                         :body-media-type "application/json"
                                         :params (("Integer" . 1234))
                                         :documentation
                                         "Parses integer shapes")
                                        (:id "parses_long_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"Long\":1234567890123456789}"
                                         :body-media-type "application/json"
                                         :params
                                         (("Long" . 1234567890123456789))
                                         :documentation "Parses long shapes")
                                        (:id "parses_float_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"Float\":1234.5}"
                                         :body-media-type "application/json"
                                         :params (("Float" . 1234.5d0))
                                         :documentation "Parses float shapes")
                                        (:id "parses_double_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"Double\":123456789.12345679}"
                                         :body-media-type "application/json"
                                         :params
                                         (("Double" . 1.2345678912345679d8))
                                         :documentation "Parses double shapes")
                                        (:id "parses_boolean_shapes_true"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"Boolean\":true}"
                                         :body-media-type "application/json"
                                         :params (("Boolean" . common-lisp:t))
                                         :documentation
                                         "Parses boolean shapes (true)")
                                        (:id "parses_boolean_false" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"Boolean\":false}"
                                         :body-media-type "application/json"
                                         :params (("Boolean")) :documentation
                                         "Parses boolean (false)")
                                        (:id "parses_blob_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"Blob\":\"YmluYXJ5LXZhbHVl\"}"
                                         :body-media-type "application/json"
                                         :params (("Blob" . "binary-value"))
                                         :documentation "Parses blob shapes")
                                        (:id "parses_timestamp_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{\"Timestamp\":946845296}"
                                         :body-media-type "application/json"
                                         :params (("Timestamp" . 946845296))
                                         :documentation
                                         "Parses timestamp shapes")
                                        (:id "parses_iso8601_timestamps"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"Iso8601Timestamp\":\"2000-01-02T20:34:56Z\"}"
                                         :body-media-type "application/json"
                                         :params
                                         (("Iso8601Timestamp" . 946845296))
                                         :documentation
                                         "Parses iso8601 timestamps")
                                        (:id "parses_httpdate_timestamps"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"HttpdateTimestamp\":\"Sun, 02 Jan 2000 20:34:56 GMT\"}"
                                         :body-media-type "application/json"
                                         :params
                                         (("HttpdateTimestamp" . 946845296))
                                         :documentation
                                         "Parses httpdate timestamps")
                                        (:id "parses_list_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"ListOfStrings\":[\"abc\",\"mno\",\"xyz\"]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfStrings"
                                           . #("abc" "mno" "xyz")))
                                         :documentation "Parses list shapes")
                                        (:id "parses_list_of_map_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"ListOfMapsOfStrings\":[{\"size\":\"large\"},{\"color\":\"red\"}]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfMapsOfStrings"
                                           . #((("size" . "large"))
                                               (("color" . "red")))))
                                         :documentation
                                         "Parses list of map shapes")
                                        (:id "parses_list_of_list_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"ListOfLists\":[[\"abc\",\"mno\",\"xyz\"],[\"hjk\",\"qrs\",\"tuv\"]]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfLists"
                                           . #(#("abc" "mno" "xyz")
                                               #("hjk" "qrs" "tuv"))))
                                         :documentation
                                         "Parses list of list shapes")
                                        (:id "parses_list_of_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"ListOfStructs\":[{\"Value\":\"value-1\"},{\"Value\":\"value-2\"}]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("ListOfStructs"
                                           . #((("Value" . "value-1"))
                                               (("Value" . "value-2")))))
                                         :documentation
                                         "Parses list of structure shapes")
                                        (:id
                                         "parses_list_of_recursive_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"RecursiveList\":[{\"RecursiveList\":[{\"RecursiveList\":[{\"String\":\"value\"}]}]}]}"
                                         :body-media-type "application/json"
                                         :params
                                         (("RecursiveList"
                                           . #((("RecursiveList"
                                                 . #((("RecursiveList"
                                                       . #((("String"
                                                             . "value")))))))))))
                                         :documentation
                                         "Parses list of recursive structure shapes")
                                        (:id "parses_map_shapes" :protocol
                                         "aws.protocols#awsJson1_1" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"MapOfStrings\":{\"size\":\"large\",\"color\":\"red\"}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfStrings" ("size" . "large")
                                           ("color" . "red")))
                                         :documentation "Parses map shapes")
                                        (:id "parses_map_of_list_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"MapOfListsOfStrings\":{\"sizes\":[\"large\",\"small\"],\"colors\":[\"red\",\"green\"]}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfListsOfStrings"
                                           ("sizes" . #("large" "small"))
                                           ("colors" . #("red" "green"))))
                                         :documentation
                                         "Parses map of list shapes")
                                        (:id "parses_map_of_map_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"MapOfMaps\":{\"sizes\":{\"large\":\"L\",\"medium\":\"M\"},\"colors\":{\"red\":\"R\",\"blue\":\"B\"}}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfMaps"
                                           ("sizes" ("large" . "L")
                                            ("medium" . "M"))
                                           ("colors" ("red" . "R")
                                            ("blue" . "B"))))
                                         :documentation
                                         "Parses map of map shapes")
                                        (:id "parses_map_of_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"MapOfStructs\":{\"size\":{\"Value\":\"small\"},\"color\":{\"Value\":\"red\"}}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MapOfStructs"
                                           ("size" ("Value" . "small"))
                                           ("color" ("Value" . "red"))))
                                         :documentation
                                         "Parses map of structure shapes")
                                        (:id
                                         "parses_map_of_recursive_structure_shapes"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"RecursiveMap\":{\"key-1\":{\"RecursiveMap\":{\"key-2\":{\"RecursiveMap\":{\"key-3\":{\"String\":\"value\"}}}}}}}"
                                         :body-media-type "application/json"
                                         :params
                                         (("RecursiveMap"
                                           ("key-1"
                                            ("RecursiveMap"
                                             ("key-2"
                                              ("RecursiveMap"
                                               ("key-3"
                                                ("String" . "value"))))))))
                                         :documentation
                                         "Parses map of recursive structure shapes")
                                        (:id
                                         "parses_the_request_id_from_the_response"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("X-Amzn-Requestid"
                                           . "amazon-uniq-request-id")
                                          ("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Parses the request id from the response")))

(smithy/sdk/operation:define-operation null-operation :shape-name
                                       "NullOperation" :input
                                       null-operation-input-output :output
                                       null-operation-input-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson11StructuresDontSerializeNullValues"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.NullOperation"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("string")) :documentation
                                         "Null structure values are dropped"
                                         :applies-to "client")
                                        (:id
                                         "AwsJson11ServersDontDeserializeNullStructureValues"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.NullOperation"))
                                         :body "{
    \"string\": null
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Null structure values are dropped"
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id
                                         "AwsJson11StructuresDontDeserializeNullValues"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"string\": null
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Null structure values are dropped"
                                         :applies-to "client")
                                        (:id
                                         "AwsJson11ServersDontSerializeNullStructureValues"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("string")) :documentation
                                         "Null structure values are dropped"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation operation-with-optional-input-output
                                       :shape-name
                                       "OperationWithOptionalInputOutput"
                                       :input
                                       operation-with-optional-input-output-input
                                       :output
                                       operation-with-optional-input-output-output
                                       :errors common-lisp:nil :request-tests
                                       ((:id
                                         "can_call_operation_with_no_input_or_output"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.OperationWithOptionalInputOutput"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Can call operations with no input or output")
                                        (:id
                                         "can_call_operation_with_optional_input"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.OperationWithOptionalInputOutput"))
                                         :body "{\"Value\":\"Hi\"}"
                                         :body-media-type "application/json"
                                         :params (("Value" . "Hi"))
                                         :documentation
                                         "Can invoke operations with optional input")))

(smithy/sdk/operation:define-operation put-and-get-inline-documents :shape-name
                                       "PutAndGetInlineDocuments" :input
                                       put-and-get-inline-documents-input-output
                                       :output
                                       put-and-get-inline-documents-input-output
                                       :errors common-lisp:nil :request-tests
                                       ((:id "PutAndGetInlineDocumentsInput"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.PutAndGetInlineDocuments"))
                                         :require-headers #("Content-Length")
                                         :body "{
    \"inlineDocument\": {\"foo\": \"bar\"}
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("inlineDocument" ("foo" . "bar")))
                                         :documentation
                                         "Serializes inline documents in a JSON request."))
                                       :response-tests
                                       ((:id "PutAndGetInlineDocumentsInput"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"inlineDocument\": {\"foo\": \"bar\"}
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("inlineDocument" ("foo" . "bar")))
                                         :documentation
                                         "Serializes inline documents in a JSON response.")))

(smithy/sdk/operation:define-operation put-with-content-encoding :shape-name
                                       "PutWithContentEncoding" :input
                                       put-with-content-encoding-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id
                                         "SDKAppliedContentEncoding_awsJson1_1"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("data"
                                           . "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
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header.")
                                        (:id
                                         "SDKAppendsGzipAndIgnoresHttpProvidedEncoding_awsJson1_1"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("encoding" . "custom")
                                          ("data"
                                           . "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
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header, and the
user-provided content-encoding is NOT in the Content-Encoding header since HTTP binding
traits are ignored in the awsJson1_1 protocol.
")))

(smithy/sdk/operation:define-operation simple-scalar-properties :shape-name
                                       "SimpleScalarProperties" :input
                                       simple-scalar-properties-input-output
                                       :output
                                       simple-scalar-properties-input-output
                                       :errors common-lisp:nil :request-tests
                                       ((:id "AwsJson11SupportsNaNFloatInputs"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.SimpleScalarProperties"))
                                         :body "{
    \"floatValue\": \"NaN\",
    \"doubleValue\": \"NaN\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "AwsJson11SupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.SimpleScalarProperties"))
                                         :body "{
    \"floatValue\": \"Infinity\",
    \"doubleValue\": \"Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "AwsJson11SupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.SimpleScalarProperties"))
                                         :body "{
    \"floatValue\": \"-Infinity\",
    \"doubleValue\": \"-Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values."))
                                       :response-tests
                                       ((:id "AwsJson11SupportsNaNFloatInputs"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"floatValue\": \"NaN\",
    \"doubleValue\": \"NaN\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "AwsJson11SupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"floatValue\": \"Infinity\",
    \"doubleValue\": \"Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "AwsJson11SupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"floatValue\": \"-Infinity\",
    \"doubleValue\": \"-Infinity\"
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values.")))

(smithy/sdk/operation:define-operation sparse-nulls-operation :shape-name
                                       "SparseNullsOperation" :input
                                       sparse-nulls-operation-input-output
                                       :output
                                       sparse-nulls-operation-input-output
                                       :errors common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson11SparseMapsSerializeNullValues"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.SparseNullsOperation"))
                                         :body "{
    \"sparseStringMap\": {
        \"foo\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params (("sparseStringMap" ("foo")))
                                         :documentation
                                         "Serializes null values in maps")
                                        (:id
                                         "AwsJson11SparseListsSerializeNull"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1")
                                          ("X-Amz-Target"
                                           . "JsonProtocol.SparseNullsOperation"))
                                         :body "{
    \"sparseStringList\": [
        null
    ]
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseStringList"
                                           . #(common-lisp:nil)))
                                         :documentation
                                         "Serializes null values in lists"))
                                       :response-tests
                                       ((:id
                                         "AwsJson11SparseMapsDeserializeNullValues"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"sparseStringMap\": {
        \"foo\": null
    }
}"
                                         :body-media-type "application/json"
                                         :params (("sparseStringMap" ("foo")))
                                         :documentation
                                         "Deserializes null values in maps")
                                        (:id
                                         "AwsJson11SparseListsDeserializeNull"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body "{
    \"sparseStringList\": [
        null
    ]
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("sparseStringList"
                                           . #(common-lisp:nil)))
                                         :documentation
                                         "Deserializes null values in lists")))
