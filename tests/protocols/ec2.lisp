(uiop/package:define-package #:pira/tests/protocols/ec2 (:use)
                             (:export #:aws-ec2 #:complex-nested-error-data
                              #:datetime-offsets #:datetime-offsets-output
                              #:empty-input-and-empty-output
                              #:empty-input-and-empty-output-input
                              #:empty-input-and-empty-output-output
                              #:endpoint-operation
                              #:endpoint-with-host-label-operation
                              #:fractional-seconds #:fractional-seconds-output
                              #:greeting-with-errors
                              #:greeting-with-errors-output #:host-label-input
                              #:host-with-path-operation
                              #:ignores-wrapping-xml-name
                              #:ignores-wrapping-xml-name-output
                              #:list-with-member-namespace
                              #:list-with-namespace #:list-with-xml-name
                              #:nested-struct-with-list #:nested-structures
                              #:nested-structures-input #:no-input-and-output
                              #:no-input-and-output-output
                              #:put-with-content-encoding
                              #:query-idempotency-token-auto-fill
                              #:query-idempotency-token-auto-fill-input
                              #:query-lists #:query-lists-input
                              #:query-timestamps #:query-timestamps-input
                              #:recursive-xml-shapes
                              #:recursive-xml-shapes-output
                              #:recursive-xml-shapes-output-nested1
                              #:recursive-xml-shapes-output-nested2
                              #:renamed-list-members #:simple-input-params
                              #:simple-input-params-input
                              #:simple-scalar-xml-properties
                              #:simple-scalar-xml-properties-output
                              #:struct-arg #:structure-list
                              #:structure-list-member #:xml-blobs
                              #:xml-blobs-output #:xml-empty-blobs
                              #:xml-empty-lists #:xml-enums #:xml-enums-output
                              #:xml-int-enums #:xml-int-enums-output
                              #:xml-lists #:xml-lists-output
                              #:xml-namespace-nested #:xml-namespaced-list
                              #:xml-namespaces #:xml-namespaces-output
                              #:xml-timestamps #:xml-timestamps-output))
(common-lisp:in-package #:pira/tests/protocols/ec2)

(smithy/sdk/service:define-service aws-ec2 :shape-name "AwsEc2" :version
                                   "2020-01-08" :title
                                   "Sample Ec2 Protocol Service" :operations
                                   '(datetime-offsets
                                     empty-input-and-empty-output
                                     endpoint-operation
                                     endpoint-with-host-label-operation
                                     fractional-seconds greeting-with-errors
                                     host-with-path-operation
                                     ignores-wrapping-xml-name
                                     nested-structures no-input-and-output
                                     put-with-content-encoding
                                     query-idempotency-token-auto-fill
                                     query-lists query-timestamps
                                     recursive-xml-shapes simple-input-params
                                     simple-scalar-xml-properties xml-blobs
                                     xml-empty-blobs xml-empty-lists xml-enums
                                     xml-int-enums xml-lists xml-namespaces
                                     xml-timestamps)
                                   :xml-namespace
                                   '(:uri "https://example.com/" :prefix
                                     common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "EC2 Protocol"))
                                     ("aws.auth#sigv4" ("name" . "ec2query"))
                                     ("aws.protocols#ec2Query")))

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
                                      :member-name "Foo"))
                                    (:shape-name "ComplexNestedErrorData"))

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

(smithy/sdk/shapes:define-structure fractional-seconds-output common-lisp:nil
                                    ((datetime :target-type date-time
                                      :member-name "datetime"))
                                    (:shape-name "FractionalSecondsOutput"))

(smithy/sdk/shapes:define-structure greeting-with-errors-output common-lisp:nil
                                    ((greeting :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "greeting"))
                                    (:shape-name "GreetingWithErrorsOutput"))

(smithy/sdk/shapes:define-structure host-label-input common-lisp:nil
                                    ((label :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "label"))
                                    (:shape-name "HostLabelInput"))

(smithy/sdk/shapes:define-structure ignores-wrapping-xml-name-output
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo"))
                                    (:shape-name
                                     "IgnoresWrappingXmlNameOutput")
                                    (:xml-name "IgnoreMe"))

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

(smithy/sdk/shapes:define-list list-with-xml-name :member
                               (smithy/sdk/smithy-types:string :xml-name
                                "item"))

(smithy/sdk/shapes:define-structure nested-struct-with-list common-lisp:nil
                                    ((list-arg :target-type string-list
                                      :member-name "ListArg"))
                                    (:shape-name "NestedStructWithList"))

(smithy/sdk/shapes:define-structure nested-structures-input common-lisp:nil
                                    ((nested :target-type struct-arg
                                      :member-name "Nested"))
                                    (:shape-name "NestedStructuresInput"))

(smithy/sdk/shapes:define-structure no-input-and-output-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "NoInputAndOutputOutput"))

(smithy/sdk/shapes:define-input put-with-content-encoding-input common-lisp:nil
                                ((encoding :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "encoding" :http-header "Content-Encoding")
                                 (data :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "data"))
                                (:shape-name "PutWithContentEncodingInput"))

(smithy/sdk/shapes:define-structure query-idempotency-token-auto-fill-input
                                    common-lisp:nil
                                    ((token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "token"))
                                    (:shape-name
                                     "QueryIdempotencyTokenAutoFillInput"))

(smithy/sdk/shapes:define-structure query-lists-input common-lisp:nil
                                    ((list-arg :target-type string-list
                                      :member-name "ListArg")
                                     (complex-list-arg :target-type
                                      greeting-list :member-name
                                      "ComplexListArg")
                                     (list-arg-with-xml-name-member
                                      :target-type list-with-xml-name
                                      :member-name "ListArgWithXmlNameMember")
                                     (list-arg-with-xml-name :target-type
                                      list-with-xml-name :member-name
                                      "ListArgWithXmlName" :xml-name "Hi")
                                     (nested-with-list :target-type
                                      nested-struct-with-list :member-name
                                      "NestedWithList"))
                                    (:shape-name "QueryListsInput"))

(smithy/sdk/shapes:define-structure query-timestamps-input common-lisp:nil
                                    ((normal-format :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "normalFormat")
                                     (epoch-member :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "epochMember"
                                      :timestamp-format "epoch-seconds")
                                     (epoch-target :target-type epoch-seconds
                                      :member-name "epochTarget"))
                                    (:shape-name "QueryTimestampsInput"))

(smithy/sdk/shapes:define-structure recursive-xml-shapes-output common-lisp:nil
                                    ((nested :target-type
                                      recursive-xml-shapes-output-nested1
                                      :member-name "nested"))
                                    (:shape-name "RecursiveXmlShapesOutput"))

(smithy/sdk/shapes:define-structure recursive-xml-shapes-output-nested1
                                    common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "foo")
                                     (nested :target-type
                                      recursive-xml-shapes-output-nested2
                                      :member-name "nested"))
                                    (:shape-name
                                     "RecursiveXmlShapesOutputNested1"))

(smithy/sdk/shapes:define-structure recursive-xml-shapes-output-nested2
                                    common-lisp:nil
                                    ((bar :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "bar")
                                     (recursive-member :target-type
                                      recursive-xml-shapes-output-nested1
                                      :member-name "recursiveMember"))
                                    (:shape-name
                                     "RecursiveXmlShapesOutputNested2"))

(smithy/sdk/shapes:define-list renamed-list-members :member
                               (smithy/sdk/smithy-types:string :xml-name
                                "item"))

(smithy/sdk/shapes:define-structure simple-input-params-input common-lisp:nil
                                    ((foo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Foo")
                                     (bar :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Bar")
                                     (baz :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Baz")
                                     (bam :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Bam")
                                     (float-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "FloatValue")
                                     (boo :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Boo")
                                     (qux :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "Qux")
                                     (foo-enum :target-type foo-enum
                                      :member-name "FooEnum")
                                     (has-query-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "HasQueryName")
                                     (has-query-and-xml-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "HasQueryAndXmlName"
                                      :xml-name "hasQueryAndXmlName")
                                     (uses-xml-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "UsesXmlName" :xml-name
                                      "usesXmlName"))
                                    (:shape-name "SimpleInputParamsInput"))

(smithy/sdk/shapes:define-structure simple-scalar-xml-properties-output
                                    common-lisp:nil
                                    ((string-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stringValue")
                                     (empty-string-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "emptyStringValue")
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
                                     "SimpleScalarXmlPropertiesOutput"))

(smithy/sdk/shapes:define-structure struct-arg common-lisp:nil
                                    ((string-arg :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StringArg")
                                     (other-arg :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "OtherArg")
                                     (recursive-arg :target-type struct-arg
                                      :member-name "RecursiveArg"))
                                    (:shape-name "StructArg"))

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

(smithy/sdk/shapes:define-structure xml-blobs-output common-lisp:nil
                                    ((data :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "data"))
                                    (:shape-name "XmlBlobsOutput"))

(smithy/sdk/shapes:define-structure xml-enums-output common-lisp:nil
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
                                    (:shape-name "XmlEnumsOutput"))

(smithy/sdk/shapes:define-structure xml-int-enums-output common-lisp:nil
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
                                    (:shape-name "XmlIntEnumsOutput"))

(smithy/sdk/shapes:define-structure xml-lists-output common-lisp:nil
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
                                      "myStructureList"))
                                    (:shape-name "XmlListsOutput"))

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

(smithy/sdk/shapes:define-structure xml-namespaces-output common-lisp:nil
                                    ((nested :target-type xml-namespace-nested
                                      :member-name "nested"))
                                    (:shape-name "XmlNamespacesOutput")
                                    (:xml-namespace
                                     (:uri "http://foo.com" :prefix
                                      common-lisp:nil)))

(smithy/sdk/shapes:define-structure xml-timestamps-output common-lisp:nil
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
                                    (:shape-name "XmlTimestampsOutput"))

(smithy/sdk/operation:define-operation datetime-offsets :shape-name
                                       "DatetimeOffsets" :input
                                       common-lisp:null :output
                                       datetime-offsets-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id
                                         "Ec2QueryDateTimeWithNegativeOffset"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<DatetimeOffsetsResponse xmlns=\"https://example.com/\">
    <datetime>2019-12-16T22:48:18-01:00</datetime>
    <requestId>requestid</requestId>
</DatetimeOffsetsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("datetime" . 1576540098))
                                         :documentation
                                         "Ensures that clients can correctly parse datetime (timestamps) with offsets")
                                        (:id
                                         "Ec2QueryDateTimeWithPositiveOffset"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<DatetimeOffsetsResponse xmlns=\"https://example.com/\">
    <datetime>2019-12-17T00:48:18+01:00</datetime>
    <requestId>requestid</requestId>
</DatetimeOffsetsResponse>
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
                                       :errors common-lisp:nil :request-tests
                                       ((:id "Ec2QueryEmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=EmptyInputAndEmptyOutput&Version=2020-01-08"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :documentation
                                         "Empty input serializes no extra query params"))
                                       :response-tests
                                       ((:id "Ec2QueryEmptyInputAndEmptyOutput"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<EmptyInputAndEmptyOutputResponse xmlns=\"https://example.com/\">
    <requestId>requestid</requestId>
</EmptyInputAndEmptyOutputResponse>
"
                                         :body-media-type "application/xml"
                                         :documentation "Empty output")))

(smithy/sdk/operation:define-operation endpoint-operation :shape-name
                                       "EndpointOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :endpoint-host-prefix "foo."
                                       :request-tests
                                       ((:id "Ec2QueryEndpointTrait" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :host "example.com"
                                         :resolved-host "foo.example.com"
                                         :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=EndpointOperation&Version=2020-01-08"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :documentation
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
                                         "Ec2QueryEndpointTraitWithHostLabel"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :host
                                         "example.com" :resolved-host
                                         "foo.bar.example.com" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=EndpointWithHostLabelOperation&Version=2020-01-08&Label=bar"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
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
                                         "Ec2QueryDateTimeWithFractionalSeconds"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<FractionalSecondsResponse xmlns=\"https://example.com/\">
    <datetime>2000-01-02T20:34:56.123Z</datetime>
    <requestId>requestid</requestId>
</FractionalSecondsResponse>
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
                                       (complex-error invalid-greeting)
                                       :response-tests
                                       ((:id "Ec2GreetingWithErrors" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<GreetingWithErrorsResponse xmlns=\"https://example.com/\">
    <greeting>Hello</greeting>
    <requestId>requestid</requestId>
</GreetingWithErrorsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("greeting" . "Hello"))
                                         :documentation
                                         "Ensures that operations with errors successfully know how to deserialize the successful response")))

(smithy/sdk/operation:define-operation host-with-path-operation :shape-name
                                       "HostWithPathOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "Ec2QueryHostWithPath" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/custom/" :host
                                         "example.com/custom" :body
                                         "Action=HostWithPathOperation&Version=2020-01-08"
                                         :documentation
                                         "Custom endpoints supplied by users can have paths"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation ignores-wrapping-xml-name :shape-name
                                       "IgnoresWrappingXmlName" :input
                                       common-lisp:null :output
                                       ignores-wrapping-xml-name-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2IgnoresWrappingXmlName"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<IgnoresWrappingXmlNameResponse xmlns=\"https://example.com/\">
    <foo>bar</foo>
    <requestId>requestid</requestId>
</IgnoresWrappingXmlNameResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("foo" . "bar"))
                                         :documentation
                                         "The xmlName trait on the output structure is ignored in the ec2 protocol")))

(smithy/sdk/operation:define-operation nested-structures :shape-name
                                       "NestedStructures" :input
                                       nested-structures-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "Ec2NestedStructures" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=NestedStructures&Version=2020-01-08&Nested.StringArg=foo&Nested.OtherArg=true&Nested.RecursiveArg.StringArg=baz"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("Nested" ("StringArg" . "foo")
                                           ("OtherArg" . common-lisp:t)
                                           ("RecursiveArg"
                                            ("StringArg" . "baz"))))
                                         :documentation
                                         "Serializes nested structures using dots")))

(smithy/sdk/operation:define-operation no-input-and-output :shape-name
                                       "NoInputAndOutput" :input
                                       common-lisp:null :output
                                       no-input-and-output-output :errors
                                       common-lisp:nil :request-tests
                                       ((:id "Ec2QueryNoInputAndOutput"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=NoInputAndOutput&Version=2020-01-08"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :documentation
                                         "No input serializes no payload"))
                                       :response-tests
                                       ((:id "Ec2QueryNoInputAndOutput"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<NoInputAndOutputResponse xmlns=\"https://example.com/\">
    <requestId>requestid</requestId>
</NoInputAndOutputResponse>
"
                                         :body-media-type "application/xml"
                                         :documentation "Empty output")))

(smithy/sdk/operation:define-operation put-with-content-encoding :shape-name
                                       "PutWithContentEncoding" :input
                                       put-with-content-encoding-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id
                                         "SDKAppliedContentEncoding_ec2Query"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("data"
                                           . "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
"))
                                         :documentation
                                         "Compression algorithm encoding is appended to the Content-Encoding header.")
                                        (:id
                                         "SDKAppendsGzipAndIgnoresHttpProvidedEncoding_ec2Query"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Encoding" . "gzip"))
                                         :params
                                         (("encoding" . "custom")
                                          ("data"
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
                                         "Compression algorithm encoding is appended to the Content-Encoding header, and the
user-provided content-encoding is NOT in the Content-Encoding header since HTTP binding
traits are ignored in the ec2Query protocol.
")))

(smithy/sdk/operation:define-operation query-idempotency-token-auto-fill
                                       :shape-name
                                       "QueryIdempotencyTokenAutoFill" :input
                                       query-idempotency-token-auto-fill-input
                                       :output common-lisp:null :errors
                                       common-lisp:nil :request-tests
                                       ((:id
                                         "Ec2ProtocolIdempotencyTokenAutoFill"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=QueryIdempotencyTokenAutoFill&Version=2020-01-08&Token=00000000-0000-4000-8000-000000000000"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :documentation
                                         "Automatically adds idempotency token when not set"
                                         :applies-to "client")
                                        (:id
                                         "Ec2ProtocolIdempotencyTokenAutoFillIsSet"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=QueryIdempotencyTokenAutoFill&Version=2020-01-08&Token=00000000-0000-4000-8000-000000000123"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("token"
                                           . "00000000-0000-4000-8000-000000000123"))
                                         :documentation
                                         "Uses the given idempotency token as-is"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation query-lists :shape-name "QueryLists"
                                       :input query-lists-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "Ec2Lists" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=QueryLists&Version=2020-01-08&ListArg.1=foo&ListArg.2=bar&ListArg.3=baz&ComplexListArg.1.Hi=hello&ComplexListArg.2.Hi=hola"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("ListArg" . #("foo" "bar" "baz"))
                                          ("ComplexListArg"
                                           . #((("hi" . "hello"))
                                               (("hi" . "hola")))))
                                         :documentation
                                         "Serializes query lists. All EC2 lists are flattened.")
                                        (:id "Ec2EmptyQueryLists" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=QueryLists&Version=2020-01-08"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("ListArg" . #()))
                                         :documentation
                                         "Does not serialize empty query lists.")
                                        (:id "Ec2ListArgWithXmlNameMember"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=QueryLists&Version=2020-01-08&ListArgWithXmlNameMember.1=A&ListArgWithXmlNameMember.2=B"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("ListArgWithXmlNameMember"
                                           . #("A" "B")))
                                         :documentation
                                         "An xmlName trait in the member of a list has no effect on the list serialization.")
                                        (:id "Ec2ListMemberWithXmlName"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=QueryLists&Version=2020-01-08&Hi.1=A&Hi.2=B"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("ListArgWithXmlName" . #("A" "B")))
                                         :documentation
                                         "Changes the name of the list using the xmlName trait")
                                        (:id "Ec2ListNestedStructWithList"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :body
                                         "Action=QueryLists&Version=2020-01-08&NestedWithList.ListArg.1=A&NestedWithList.ListArg.2=B"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("NestedWithList"
                                           ("ListArg" . #("A" "B"))))
                                         :documentation
                                         "Nested structure with a list member")))

(smithy/sdk/operation:define-operation query-timestamps :shape-name
                                       "QueryTimestamps" :input
                                       query-timestamps-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "Ec2TimestampsInput" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=QueryTimestamps&Version=2020-01-08&NormalFormat=2015-01-25T08%3A00%3A00Z&EpochMember=1422172800&EpochTarget=1422172800"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("normalFormat" . 1422172800)
                                          ("epochMember" . 1422172800)
                                          ("epochTarget" . 1422172800))
                                         :documentation
                                         "Serializes timestamps")))

(smithy/sdk/operation:define-operation recursive-xml-shapes :shape-name
                                       "RecursiveXmlShapes" :input
                                       common-lisp:null :output
                                       recursive-xml-shapes-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2RecursiveShapes" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<RecursiveXmlShapesResponse xmlns=\"https://example.com/\">
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
    <requestId>requestid</requestId>
</RecursiveXmlShapesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("foo" . "Foo1")
                                           ("nested" ("bar" . "Bar1")
                                            ("recursiveMember" ("foo" . "Foo2")
                                             ("nested" ("bar" . "Bar2"))))))
                                         :documentation
                                         "Serializes recursive structures")))

(smithy/sdk/operation:define-operation simple-input-params :shape-name
                                       "SimpleInputParams" :input
                                       simple-input-params-input :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id "Ec2SimpleInputParamsStrings"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&Foo=val1&Bar=val2"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("Foo" . "val1") ("Bar" . "val2"))
                                         :documentation "Serializes strings")
                                        (:id
                                         "Ec2SimpleInputParamsStringAndBooleanTrue"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&Foo=val1&Baz=true"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("Foo" . "val1")
                                          ("Baz" . common-lisp:t))
                                         :documentation
                                         "Serializes booleans that are true")
                                        (:id
                                         "Ec2SimpleInputParamsStringsAndBooleanFalse"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&Baz=false"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("Baz")) :documentation
                                         "Serializes booleans that are false")
                                        (:id "Ec2SimpleInputParamsInteger"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&Bam=10"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("Bam" . 10)) :documentation
                                         "Serializes integers")
                                        (:id "Ec2SimpleInputParamsFloat"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&Boo=10.8"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("Boo" . 10.8d0))
                                         :documentation "Serializes floats")
                                        (:id "Ec2SimpleInputParamsBlob"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&Qux=dmFsdWU%3D"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("Qux" . "value"))
                                         :documentation
                                         "Blobs are base64 encoded in the query string")
                                        (:id "Ec2Enums" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&FooEnum=Foo"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("FooEnum" . "Foo"))
                                         :documentation
                                         "Serializes enums in the query string")
                                        (:id "Ec2Query" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&HasQueryName=Hi"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("HasQueryName" . "Hi"))
                                         :documentation
                                         "Serializes query using ec2QueryName trait.")
                                        (:id "Ec2QueryIsPreferred" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&HasQueryAndXmlName=Hi"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("HasQueryAndXmlName" . "Hi"))
                                         :documentation
                                         "ec2QueryName trait is preferred over xmlName.")
                                        (:id "Ec2XmlNameIsUppercased" :protocol
                                         "aws.protocols#ec2Query" :method
                                         "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&UsesXmlName=Hi"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params (("UsesXmlName" . "Hi"))
                                         :documentation
                                         "xmlName is used with the ec2 protocol, but the first character is uppercased")
                                        (:id "Ec2QuerySupportsNaNFloatInputs"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&FloatValue=NaN&Boo=NaN"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("FloatValue" . "NaN")
                                          ("Boo" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "Ec2QuerySupportsInfinityFloatInputs"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&FloatValue=Infinity&Boo=Infinity"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("FloatValue" . "Infinity")
                                          ("Boo" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "Ec2QuerySupportsNegativeInfinityFloatInputs"
                                         :protocol "aws.protocols#ec2Query"
                                         :method "POST" :uri "/" :headers
                                         (("Content-Type"
                                           . "application/x-www-form-urlencoded"))
                                         :require-headers #("Content-Length")
                                         :body
                                         "Action=SimpleInputParams&Version=2020-01-08&FloatValue=-Infinity&Boo=-Infinity"
                                         :body-media-type
                                         "application/x-www-form-urlencoded"
                                         :params
                                         (("FloatValue" . "-Infinity")
                                          ("Boo" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values.")))

(smithy/sdk/operation:define-operation simple-scalar-xml-properties :shape-name
                                       "SimpleScalarXmlProperties" :input
                                       common-lisp:null :output
                                       simple-scalar-xml-properties-output
                                       :errors common-lisp:nil :response-tests
                                       ((:id "Ec2SimpleScalarProperties"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<SimpleScalarXmlPropertiesResponse xmlns=\"https://example.com/\">
    <stringValue>string</stringValue>
    <emptyStringValue/>
    <trueBooleanValue>true</trueBooleanValue>
    <falseBooleanValue>false</falseBooleanValue>
    <byteValue>1</byteValue>
    <shortValue>2</shortValue>
    <integerValue>3</integerValue>
    <longValue>4</longValue>
    <floatValue>5.5</floatValue>
    <DoubleDribble>6.5</DoubleDribble>
    <requestId>requestid</requestId>
</SimpleScalarXmlPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("stringValue" . "string")
                                          ("emptyStringValue" . "")
                                          ("trueBooleanValue" . common-lisp:t)
                                          ("falseBooleanValue")
                                          ("byteValue" . 1) ("shortValue" . 2)
                                          ("integerValue" . 3)
                                          ("longValue" . 4)
                                          ("floatValue" . 5.5d0)
                                          ("doubleValue" . 6.5d0))
                                         :documentation
                                         "Serializes simple scalar properties")
                                        (:id "Ec2QuerySupportsNaNFloatOutputs"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<SimpleScalarXmlPropertiesResponse xmlns=\"https://example.com/\">
    <floatValue>NaN</floatValue>
    <DoubleDribble>NaN</DoubleDribble>
</SimpleScalarXmlPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "NaN")
                                          ("doubleValue" . "NaN"))
                                         :documentation
                                         "Supports handling NaN float values.")
                                        (:id
                                         "Ec2QuerySupportsInfinityFloatOutputs"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<SimpleScalarXmlPropertiesResponse xmlns=\"https://example.com/\">
    <floatValue>Infinity</floatValue>
    <DoubleDribble>Infinity</DoubleDribble>
</SimpleScalarXmlPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "Infinity")
                                          ("doubleValue" . "Infinity"))
                                         :documentation
                                         "Supports handling Infinity float values.")
                                        (:id
                                         "Ec2QuerySupportsNegativeInfinityFloatOutputs"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<SimpleScalarXmlPropertiesResponse xmlns=\"https://example.com/\">
    <floatValue>-Infinity</floatValue>
    <DoubleDribble>-Infinity</DoubleDribble>
</SimpleScalarXmlPropertiesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("floatValue" . "-Infinity")
                                          ("doubleValue" . "-Infinity"))
                                         :documentation
                                         "Supports handling -Infinity float values.")))

(smithy/sdk/operation:define-operation xml-blobs :shape-name "XmlBlobs" :input
                                       common-lisp:null :output
                                       xml-blobs-output :errors common-lisp:nil
                                       :response-tests
                                       ((:id "Ec2XmlBlobs" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlBlobsResponse xmlns=\"https://example.com/\">
    <data>dmFsdWU=</data>
    <requestId>requestid</requestId>
</XmlBlobsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "value"))
                                         :documentation
                                         "Blobs are base64 encoded")))

(smithy/sdk/operation:define-operation xml-empty-blobs :shape-name
                                       "XmlEmptyBlobs" :input common-lisp:null
                                       :output xml-blobs-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2XmlEmptyBlobs" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlEmptyBlobsResponse xmlns=\"https://example.com/\">
    <data></data>
    <requestId>requestid</requestId>
</XmlEmptyBlobsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "")) :documentation
                                         "Empty blobs are deserialized as empty string"
                                         :applies-to "client")
                                        (:id "Ec2XmlEmptySelfClosedBlobs"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlEmptyBlobsResponse xmlns=\"https://example.com/\">
    <data/>
    <requestId>requestid</requestId>
</XmlEmptyBlobsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("data" . "")) :documentation
                                         "Empty self closed blobs are deserialized as empty string"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation xml-empty-lists :shape-name
                                       "XmlEmptyLists" :input common-lisp:null
                                       :output xml-lists-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2XmlEmptyLists" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type" . "text/xml")) :body
                                         "<XmlEmptyListsResponse xmlns=\"https://example.com/\">
  <stringList/>
  <stringSet></stringSet>
</XmlEmptyListsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("stringList" . #())
                                          ("stringSet" . #()))
                                         :documentation
                                         "Deserializes empty XML lists"
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation xml-enums :shape-name "XmlEnums" :input
                                       common-lisp:null :output
                                       xml-enums-output :errors common-lisp:nil
                                       :response-tests
                                       ((:id "Ec2XmlEnums" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlEnumsResponse xmlns=\"https://example.com/\">
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
    <requestId>requestid</requestId>
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
                                       :input common-lisp:null :output
                                       xml-int-enums-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2XmlIntEnums" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlIntEnumsResponse xmlns=\"https://example.com/\">
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
    <requestId>requestid</requestId>
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
                                       common-lisp:null :output
                                       xml-lists-output :errors common-lisp:nil
                                       :response-tests
                                       ((:id "Ec2XmlLists" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlListsResponse xmlns=\"https://example.com/\">
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
    <requestId>requestid</requestId>
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
                                               (("a" . "3") ("b" . "4")))))
                                         :documentation
                                         "Tests for XML list serialization")))

(smithy/sdk/operation:define-operation xml-namespaces :shape-name
                                       "XmlNamespaces" :input common-lisp:null
                                       :output xml-namespaces-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2XmlNamespaces" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlNamespacesResponse xmlns=\"https://example.com/\">
    <nested>
        <foo xmlns:baz=\"http://baz.com\">Foo</foo>
        <values xmlns=\"http://qux.com\">
            <member xmlns=\"http://bux.com\">Bar</member>
            <member xmlns=\"http://bux.com\">Baz</member>
        </values>
    </nested>
    <requestId>requestid</requestId>
</XmlNamespacesResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("nested" ("foo" . "Foo")
                                           ("values" . #("Bar" "Baz"))))
                                         :documentation
                                         "Serializes XML namespaces")))

(smithy/sdk/operation:define-operation xml-timestamps :shape-name
                                       "XmlTimestamps" :input common-lisp:null
                                       :output xml-timestamps-output :errors
                                       common-lisp:nil :response-tests
                                       ((:id "Ec2XmlTimestamps" :protocol
                                         "aws.protocols#ec2Query" :code 200
                                         :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <normal>2014-04-29T18:30:38Z</normal>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("normal" . 1398796238))
                                         :documentation
                                         "Tests how normal timestamps are serialized")
                                        (:id
                                         "Ec2XmlTimestampsWithDateTimeFormat"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <dateTime>2014-04-29T18:30:38Z</dateTime>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("dateTime" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time works like normal timestamps")
                                        (:id
                                         "Ec2XmlTimestampsWithDateTimeOnTargetFormat"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("dateTimeOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of date-time on the target shape works like normal timestamps")
                                        (:id
                                         "Ec2XmlTimestampsWithEpochSecondsFormat"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <epochSeconds>1398796238</epochSeconds>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("epochSeconds" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds works")
                                        (:id
                                         "Ec2XmlTimestampsWithEpochSecondsOnTargetFormat"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("epochSecondsOnTarget"
                                           . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of epoch-seconds on the target shape works")
                                        (:id
                                         "Ec2XmlTimestampsWithHttpDateFormat"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params (("httpDate" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date works")
                                        (:id
                                         "Ec2XmlTimestampsWithHttpDateOnTargetFormat"
                                         :protocol "aws.protocols#ec2Query"
                                         :code 200 :headers
                                         (("Content-Type"
                                           . "text/xml;charset=UTF-8"))
                                         :body
                                         "<XmlTimestampsResponse xmlns=\"https://example.com/\">
    <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>
    <requestId>requestid</requestId>
</XmlTimestampsResponse>
"
                                         :body-media-type "application/xml"
                                         :params
                                         (("httpDateOnTarget" . 1398796238))
                                         :documentation
                                         "Ensures that the timestampFormat of http-date on the target shape works")))
