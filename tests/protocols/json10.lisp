(uiop/package:define-package #:pira/tests/protocols/json10
                             (:use #:pira/tests/shared-types)
                             (:export #:client-optional-defaults
                              #:complex-nested-error-data
                              #:content-type-parameters #:defaults
                              #:defaults-mixin #:dialog #:dialog-list
                              #:dialog-map #:empty-input-and-empty-output
                              #:endpoint-operation
                              #:endpoint-with-host-label-operation #:farewell
                              #:greeting-with-errors #:host-with-path-operation
                              #:json-rpc10 #:json-unions #:my-union
                              #:nested-defaults-mixin #:no-input-and-no-output
                              #:no-input-and-output #:operation-with-defaults
                              #:operation-with-nested-structure
                              #:operation-with-required-members
                              #:operation-with-required-members-with-defaults
                              #:put-with-content-encoding
                              #:query-compatible-json-rpc10
                              #:query-compatible-operation
                              #:query-incompatible-operation #:required-enum
                              #:required-int-enum #:required-members-mixin
                              #:required-members-with-defaults-mixin
                              #:required-string-list #:required-string-map
                              #:simple-scalar-properties #:test-enum
                              #:test-int-enum #:test-string-list
                              #:test-string-map #:top-level))
(common-lisp:in-package #:pira/tests/protocols/json10)

(smithy/sdk/service:define-service json-rpc10 :shape-name "JsonRpc10" :version
                                   "2020-07-14" :title
                                   "Sample Json 1.0 Protocol Service"
                                   :operations
                                   '(content-type-parameters
                                     empty-input-and-empty-output
                                     endpoint-operation
                                     endpoint-with-host-label-operation
                                     greeting-with-errors
                                     host-with-path-operation json-unions
                                     no-input-and-no-output no-input-and-output
                                     operation-with-defaults
                                     operation-with-nested-structure
                                     operation-with-required-members
                                     operation-with-required-members-with-defaults
                                     put-with-content-encoding
                                     query-incompatible-operation
                                     simple-scalar-properties)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "JSON RPC 10"))
                                     ("aws.auth#sigv4" ("name" . "jsonrpc10"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/service:define-service query-compatible-json-rpc10 :shape-name
                                   "QueryCompatibleJsonRpc10" :version
                                   "2020-07-14" :title
                                   "Query Compatible Json 1.0 Protocol Service"
                                   :operations '(query-compatible-operation)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Query Compatible JSON RPC 10"))
                                     ("aws.auth#sigv4"
                                      ("name" . "querycompatiblejsonrpc10"))
                                     ("aws.protocols#awsJson1_0")
                                     ("aws.protocols#awsQueryCompatible")))

(smithy/sdk/shapes:define-structure client-optional-defaults common-lisp:nil
                                    ((member :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "member"))
                                    (:shape-name "ClientOptionalDefaults"))

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

(smithy/sdk/shapes:define-error custom-code-error common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "CustomCodeError")
                                (:error-name "Customized") (:error-code 400))

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
                                      smithy/sdk/smithy-types:document
                                      :member-name "defaultDocumentMap")
                                     (default-document-string :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "defaultDocumentString")
                                     (default-document-boolean :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "defaultDocumentBoolean")
                                     (default-document-list :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "defaultDocumentList")
                                     (default-null-document :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "defaultNullDocument")
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

(smithy/sdk/shapes:define-input empty-input-and-empty-output-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name "EmptyInputAndEmptyOutputInput"))

(smithy/sdk/shapes:define-output empty-input-and-empty-output-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "EmptyInputAndEmptyOutputOutput"))

(smithy/sdk/shapes:define-input endpoint-with-host-label-operation-input
                                common-lisp:nil
                                ((label :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "label"
                                  :host-label common-lisp:t))
                                (:shape-name
                                 "EndpointWithHostLabelOperationInput"))

(smithy/sdk/shapes:define-structure farewell common-lisp:nil
                                    ((phrase :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "phrase"))
                                    (:shape-name "Farewell"))

(smithy/sdk/shapes:define-error foo-error common-lisp:nil common-lisp:nil
                                (:shape-name "FooError") (:error-code 500))

(smithy/sdk/shapes:define-input greeting-with-errors-input common-lisp:nil
                                ((greeting :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "greeting"))
                                (:shape-name "GreetingWithErrorsInput"))

(smithy/sdk/shapes:define-output greeting-with-errors-output common-lisp:nil
                                 ((greeting :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "greeting"))
                                 (:shape-name "GreetingWithErrorsOutput"))

(smithy/sdk/shapes:define-error invalid-greeting common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InvalidGreeting")
                                (:error-code 400))

(smithy/sdk/shapes:define-input json-unions-input common-lisp:nil
                                ((contents :target-type my-union :member-name
                                  "contents"))
                                (:shape-name "JsonUnionsInput"))

(smithy/sdk/shapes:define-output json-unions-output common-lisp:nil
                                 ((contents :target-type my-union :member-name
                                   "contents"))
                                 (:shape-name "JsonUnionsOutput"))

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
                                 (int-enum-value :target-type integer-enum
                                  :member-name "intEnumValue")
                                 (list-value :target-type string-list
                                  :member-name "listValue")
                                 (map-value :target-type string-map
                                  :member-name "mapValue")
                                 (structure-value :target-type greeting-struct
                                  :member-name "structureValue"))
                                (:shape-name "MyUnion"))

(smithy/sdk/shapes:define-structure nested-defaults-mixin common-lisp:nil
                                    ((dialog :target-type dialog :required
                                      common-lisp:t :member-name "dialog")
                                     (dialog-list :target-type dialog-list
                                      :member-name "dialogList")
                                     (dialog-map :target-type dialog-map
                                      :member-name "dialogMap"))
                                    (:shape-name "NestedDefaultsMixin"))

(smithy/sdk/shapes:define-error no-custom-code-error common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "NoCustomCodeError")
                                (:error-code 400))

(smithy/sdk/shapes:define-output no-input-and-output-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "NoInputAndOutputOutput"))

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

(smithy/sdk/shapes:define-output operation-with-required-members-output
                                 (required-members-mixin) common-lisp:nil
                                 (:shape-name
                                  "OperationWithRequiredMembersOutput"))

(smithy/sdk/shapes:define-output
 operation-with-required-members-with-defaults-output
 (required-members-with-defaults-mixin) common-lisp:nil
 (:shape-name "OperationWithRequiredMembersWithDefaultsOutput"))

(smithy/sdk/shapes:define-input put-with-content-encoding-input common-lisp:nil
                                ((encoding :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "encoding" :http-header "Content-Encoding")
                                 (data :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "data"))
                                (:shape-name "PutWithContentEncodingInput"))

(smithy/sdk/shapes:define-enum required-enum
    common-lisp:nil
  (:foo "FOO")
  (:bar "BAR")
  (:baz "BAZ"))

(smithy/sdk/shapes:define-enum required-int-enum
    common-lisp:nil
  (:one 1)
  (:two 2))

(smithy/sdk/shapes:define-structure required-members-mixin common-lisp:nil
                                    ((required-string :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "requiredString")
                                     (required-boolean :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "requiredBoolean")
                                     (required-list :target-type
                                      required-string-list :required
                                      common-lisp:t :member-name
                                      "requiredList")
                                     (required-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "requiredTimestamp")
                                     (required-blob :target-type
                                      smithy/sdk/smithy-types:blob :required
                                      common-lisp:t :member-name
                                      "requiredBlob")
                                     (required-byte :target-type
                                      smithy/sdk/smithy-types:byte :required
                                      common-lisp:t :member-name
                                      "requiredByte")
                                     (required-short :target-type
                                      smithy/sdk/smithy-types:short :required
                                      common-lisp:t :member-name
                                      "requiredShort")
                                     (required-integer :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "requiredInteger")
                                     (required-long :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "requiredLong")
                                     (required-float :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name
                                      "requiredFloat")
                                     (required-double :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "requiredDouble")
                                     (required-map :target-type
                                      required-string-map :required
                                      common-lisp:t :member-name
                                      "requiredMap"))
                                    (:shape-name "RequiredMembersMixin"))

(smithy/sdk/shapes:define-structure required-members-with-defaults-mixin
                                    common-lisp:nil
                                    ((required-string :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "requiredString")
                                     (required-boolean :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "requiredBoolean")
                                     (required-list :target-type
                                      required-string-list :required
                                      common-lisp:t :member-name
                                      "requiredList")
                                     (required-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "requiredTimestamp")
                                     (required-blob :target-type
                                      smithy/sdk/smithy-types:blob :required
                                      common-lisp:t :member-name
                                      "requiredBlob")
                                     (required-byte :target-type
                                      smithy/sdk/smithy-types:byte :required
                                      common-lisp:t :member-name
                                      "requiredByte")
                                     (required-short :target-type
                                      smithy/sdk/smithy-types:short :required
                                      common-lisp:t :member-name
                                      "requiredShort")
                                     (required-integer :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "requiredInteger")
                                     (required-long :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "requiredLong")
                                     (required-float :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name
                                      "requiredFloat")
                                     (required-double :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "requiredDouble")
                                     (required-map :target-type
                                      required-string-map :required
                                      common-lisp:t :member-name "requiredMap")
                                     (required-enum :target-type required-enum
                                      :required common-lisp:t :member-name
                                      "requiredEnum")
                                     (required-int-enum :target-type
                                      required-int-enum :required common-lisp:t
                                      :member-name "requiredIntEnum"))
                                    (:shape-name
                                     "RequiredMembersWithDefaultsMixin"))

(smithy/sdk/shapes:define-list required-string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map required-string-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input simple-scalar-properties-input common-lisp:nil
                                ((float-value :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "floatValue")
                                 (double-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleValue"))
                                (:shape-name "SimpleScalarPropertiesInput"))

(smithy/sdk/shapes:define-output simple-scalar-properties-output
                                 common-lisp:nil
                                 ((float-value :target-type
                                   smithy/sdk/smithy-types:float :member-name
                                   "floatValue")
                                  (double-value :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "doubleValue"))
                                 (:shape-name "SimpleScalarPropertiesOutput"))

(smithy/sdk/shapes:define-enum test-enum
    common-lisp:nil
  (:foo "FOO")
  (:bar "BAR")
  (:baz "BAZ"))

(smithy/sdk/shapes:define-enum test-int-enum
    common-lisp:nil
  (:one 1)
  (:two 2))

(smithy/sdk/shapes:define-list test-string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map test-string-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure top-level (nested-defaults-mixin)
                                    common-lisp:nil (:shape-name "TopLevel"))

(smithy/sdk/operation:define-operation content-type-parameters :shape-name
                                       "ContentTypeParameters" :input
                                       content-type-parameters-input :output
                                       content-type-parameters-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson10MustSupportParametersInContentType"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0; charset=utf-8")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.ContentTypeParameters"))
                                         :body "{\"value\":5}" :body-media-type
                                         "application/json" :params
                                         (("value" . 5)) :documentation
                                         "A server should ignore parameters added to the content type"
                                         :applies-to "server")))

(smithy/sdk/operation:define-operation empty-input-and-empty-output :shape-name
                                       "EmptyInputAndEmptyOutput" :input
                                       empty-input-and-empty-output-input
                                       :output
                                       empty-input-and-empty-output-output
                                       :errors common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson10EmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.EmptyInputAndEmptyOutput"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Clients must always send an empty object if input is modeled."))
                                       :response-tests
                                       ((:id
                                         "AwsJson10EmptyInputAndEmptyOutputSendJsonObject"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "A service will always return a JSON object for operations with modeled output.")))

(smithy/sdk/operation:define-operation endpoint-operation :shape-name
                                       "EndpointOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :endpoint-host-prefix "foo."
                                       :request-tests
                                       ((:id "AwsJson10EndpointTrait" :protocol
                                         "aws.protocols#awsJson1_0" :method
                                         "POST" :uri "/" :host "example.com"
                                         :resolved-host "foo.example.com" :body
                                         "{}" :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait.")))

(smithy/sdk/operation:define-operation endpoint-with-host-label-operation
                                       :shape-name
                                       "EndpointWithHostLabelOperation" :input
                                       endpoint-with-host-label-operation-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :endpoint-host-prefix
                                       "foo.{label}." :request-tests
                                       ((:id
                                         "AwsJson10EndpointTraitWithHostLabel"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :host
                                         "example.com" :resolved-host
                                         "foo.bar.example.com" :body
                                         "{\"label\": \"bar\"}"
                                         :body-media-type "application/json"
                                         :params (("label" . "bar"))
                                         :documentation
                                         "Operations can prepend to the given host if they define the
endpoint trait, and can use the host label trait to define
further customization based on user input.")))

(smithy/sdk/operation:define-operation greeting-with-errors :shape-name
                                       "GreetingWithErrors" :input
                                       greeting-with-errors-input :output
                                       greeting-with-errors-output :errors
                                       (complex-error foo-error
                                        invalid-greeting))

(smithy/sdk/operation:define-operation host-with-path-operation :shape-name
                                       "HostWithPathOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "AwsJson10HostWithPath" :protocol
                                         "aws.protocols#awsJson1_0" :method
                                         "POST" :uri "/custom/" :host
                                         "example.com/custom" :body "{}"
                                         :documentation
                                         "Custom endpoints supplied by users can have paths"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation json-unions :shape-name "JsonUnions"
                                       :input json-unions-input :output
                                       json-unions-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson10SerializeStringUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                         "AwsJson10SerializeBooleanUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                         "AwsJson10SerializeNumberUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                        (:id "AwsJson10SerializeBlobUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                         "AwsJson10SerializeTimestampUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                        (:id "AwsJson10SerializeEnumUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                        (:id
                                         "AwsJson10SerializeIntEnumUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
                                         :body "{
    \"contents\": {
        \"intEnumValue\": 1
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("intEnumValue" . 1)))
                                         :documentation
                                         "Serializes an intEnum union value")
                                        (:id "AwsJson10SerializeListUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                        (:id "AwsJson10SerializeMapUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                         "AwsJson10SerializeStructureUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.JsonUnions"))
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
                                         "AwsJson10DeserializeStringUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeBooleanUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeNumberUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeBlobUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeTimestampUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeEnumUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeIntEnumUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{
    \"contents\": {
        \"intEnumValue\": 1
    }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("contents" ("intEnumValue" . 1)))
                                         :documentation
                                         "Deserializes an intEnum union value")
                                        (:id
                                         "AwsJson10DeserializeListUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeMapUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10DeserializeStructureUnionValue"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                        (:id "AwsJson10DeserializeIgnoreType"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         :applies-to "client")
                                        (:id "AwsJson10DeserializeAllowNulls"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{
    \"contents\": {
      \"stringValue\": null,
      \"booleanValue\": null,
      \"numberValue\": null,
      \"blobValue\": null,
      \"timestampValue\": null,
      \"enumValue\": null,
      \"intEnumValue\": null,
      \"listValue\": null,
      \"mapValue\": null,
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
                                         "Allows for `: null` to be set for all unset fields"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation no-input-and-no-output :shape-name
                                       "NoInputAndNoOutput" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id
                                         "AwsJson10MustAlwaysSendEmptyJsonPayload"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.NoInputAndNoOutput"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Clients must always send an empty JSON object payload for
operations with no input (that is, `{}`). While AWS service
implementations support requests with no payload or requests
that send `{}`, always sending `{}` from the client is
preferred for forward compatibility in case input is ever
added to an operation.")
                                        (:id
                                         "AwsJson10ServiceSupportsNoPayloadForNoInput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.NoInputAndNoOutput"))
                                         :body "" :documentation
                                         "Service implementations must support no payload or an empty
object payload for operations that define no input. However,
despite the lack of a payload, a Content-Type header is still
required in order for the service to properly detect the
protocol."
                                         :applies-to "server"))
                                       :response-tests
                                       ((:id "AwsJson10HandlesEmptyOutputShape"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "When no output is defined, the service is expected to return
an empty payload, however, client must ignore a JSON payload
if one is returned. This ensures that if output is added later,
then it will not break the client."
                                         :applies-to "client")
                                        (:id
                                         "AwsJson10HandlesUnexpectedJsonOutput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ServiceRespondsWithNoPayload"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "" :documentation
                                         "When no output is defined, the service is expected to return
an empty payload. Despite the lack of a payload, the service
is expected to always send a Content-Type header. Clients must
handle cases where a service returns a JSON object and where
a service returns no JSON at all.")))

(smithy/sdk/operation:define-operation no-input-and-output :shape-name
                                       "NoInputAndOutput" :input
                                       common-lisp:null :output
                                       no-input-and-output-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id "AwsJson10NoInputAndOutput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.NoInputAndOutput"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "A client should always send and empty JSON object payload."))
                                       :response-tests
                                       ((:id "AwsJson10NoInputAndOutput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Empty output always serializes an empty object payload.")))

(smithy/sdk/operation:define-operation operation-with-defaults :shape-name
                                       "OperationWithDefaults" :input
                                       operation-with-defaults-input :output
                                       operation-with-defaults-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson10ClientPopulatesDefaultValuesInInput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ClientSkipsTopLevelDefaultValuesInInput"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{
}"
                                         :body-media-type "application/json"
                                         :documentation
                                         "Client skips top level default values in input."
                                         :tags #("defaults") :applies-to
                                         "client")
                                        (:id
                                         "AwsJson10ClientUsesExplicitlyProvidedMemberValuesOverDefaults"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ServerPopulatesDefaultsWhenMissingInRequestBody"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ClientUsesExplicitlyProvidedValuesInTopLevel"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ClientIgnoresNonTopLevelDefaultsOnMembersWithClientOptional"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ClientPopulatesDefaultsValuesWhenMissingInResponse"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ClientIgnoresDefaultValuesIfMemberValuesArePresentInResponse"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ServerPopulatesDefaultsInResponseWhenMissingInParams"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                       :errors common-lisp:nil :request-tests
                                       ((:id
                                         "AwsJson10ClientPopulatesNestedDefaultValuesWhenMissing"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ServerPopulatesNestedDefaultsWhenMissingInRequestBody"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ClientPopulatesNestedDefaultsWhenMissingInResponseBody"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10ServerPopulatesNestedDefaultValuesWhenMissingInInResponseParams"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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

(smithy/sdk/operation:define-operation operation-with-required-members
                                       :shape-name
                                       "OperationWithRequiredMembers" :input
                                       common-lisp:null :output
                                       operation-with-required-members-output
                                       :errors common-lisp:nil :response-tests
                                       ((:id
                                         "AwsJson10ClientErrorCorrectsWhenServerFailsToSerializeRequiredValues"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
                                         :body "{}" :body-media-type
                                         "application/json" :params
                                         (("requiredString" . "")
                                          ("requiredBoolean")
                                          ("requiredList" . #())
                                          ("requiredTimestamp" . 0)
                                          ("requiredBlob" . "")
                                          ("requiredByte" . 0)
                                          ("requiredShort" . 0)
                                          ("requiredInteger" . 0)
                                          ("requiredLong" . 0)
                                          ("requiredFloat" . 0.0d0)
                                          ("requiredDouble" . 0.0d0)
                                          ("requiredMap"))
                                         :documentation
                                         "Client error corrects when server fails to serialize required values."
                                         :tags #("defaults" "error-correction")
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation
 operation-with-required-members-with-defaults :shape-name
 "OperationWithRequiredMembersWithDefaults" :input common-lisp:null :output
 operation-with-required-members-with-defaults-output :errors common-lisp:nil
 :response-tests
 ((:id
   "AwsJson10ClientErrorCorrectsWithDefaultValuesWhenServerFailsToSerializeRequiredValues"
   :protocol "aws.protocols#awsJson1_0" :code 200 :headers
   (("Content-Type" . "application/x-amz-json-1.0")) :body "{}"
   :body-media-type "application/json" :params
   (("requiredString" . "hi") ("requiredBoolean" . common-lisp:t)
    ("requiredList" . #()) ("requiredTimestamp" . 1) ("requiredBlob" . "blob")
    ("requiredByte" . 1) ("requiredShort" . 1) ("requiredInteger" . 10)
    ("requiredLong" . 100) ("requiredFloat" . 1.0d0) ("requiredDouble" . 1.0d0)
    ("requiredMap") ("requiredEnum" . "FOO") ("requiredIntEnum" . 1))
   :documentation
   "Client error corrects with default values when server fails to serialize required values."
   :tags #("defaults" "error-correction") :applies-to "client")))

(smithy/sdk/operation:define-operation put-with-content-encoding :shape-name
                                       "PutWithContentEncoding" :input
                                       put-with-content-encoding-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id
                                         "SDKAppliedContentEncoding_awsJson1_0"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("data"
                                           . "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
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header.")
                                        (:id
                                         "SDKAppendsGzipAndIgnoresHttpProvidedEncoding_awsJson1_0"
                                         :protocol "aws.protocols#awsJson1_0"
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
traits are ignored in the awsJson1_0 protocol.
")))

(smithy/sdk/operation:define-operation query-compatible-operation :shape-name
                                       "QueryCompatibleOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (custom-code-error no-custom-code-error)
                                       :request-tests
                                       ((:id
                                         "QueryCompatibleAwsJson10CborSendsQueryModeHeader"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("x-amzn-query-mode" . "true")
                                          ("X-Amz-Target"
                                           . "QueryCompatibleJsonRpc10.QueryCompatibleOperation"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "Clients for query-compatible services MUST send the x-amzn-query-mode header.")))

(smithy/sdk/operation:define-operation query-incompatible-operation :shape-name
                                       "QueryIncompatibleOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id
                                         "NonQueryCompatibleAwsJson10ForbidsQueryModeHeader"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.QueryIncompatibleOperation"))
                                         :body "{}" :body-media-type
                                         "application/json" :documentation
                                         "The query mode header MUST NOT be set on non-query-compatible services.")))

(smithy/sdk/operation:define-operation simple-scalar-properties :shape-name
                                       "SimpleScalarProperties" :input
                                       simple-scalar-properties-input :output
                                       simple-scalar-properties-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id "AwsJson10SupportsNaNFloatInputs"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.SimpleScalarProperties"))
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
                                         "AwsJson10SupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.SimpleScalarProperties"))
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
                                         "AwsJson10SupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0")
                                          ("X-Amz-Target"
                                           . "JsonRpc10.SimpleScalarProperties"))
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
                                       ((:id "AwsJson10SupportsNaNFloatInputs"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10SupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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
                                         "AwsJson10SupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#awsJson1_0"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.0"))
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

(pira/tests/runner:define-service-tests)
