(uiop/package:define-package #:pira/tests/protocols/restxml.xmlns (:use)
                             (:export #:nested-with-namespace
                              #:rest-xml-with-namespace
                              #:simple-scalar-properties
                              #:simple-scalar-properties-input-output))
(common-lisp:in-package #:pira/tests/protocols/restxml.xmlns)

(smithy/sdk/service:define-service rest-xml-with-namespace :shape-name
                                   "RestXmlWithNamespace" :version "2019-12-16"
                                   :title
                                   "Sample Rest Xml Protocol Service With Namespace"
                                   :operations '(simple-scalar-properties)
                                   :xml-namespace
                                   '(:uri "https://example.com" :prefix
                                     common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Rest Xml Protocol Namespace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "restxmlwithnamespace"))
                                     ("aws.protocols#restXml")))

(smithy/sdk/shapes:define-structure nested-with-namespace common-lisp:nil
                                    ((attr-field :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "attrField" :xml-name
                                      "xsi:someName" :xml-attribute
                                      common-lisp:t))
                                    (:shape-name "NestedWithNamespace"))

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
                                     (nested :target-type nested-with-namespace
                                      :member-name "Nested" :xml-namespace
                                      (:uri "https://example.com" :prefix
                                       "xsi"))
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

(smithy/sdk/operation:define-operation simple-scalar-properties :shape-name
                                       "SimpleScalarProperties" :input
                                       simple-scalar-properties-request :output
                                       simple-scalar-properties-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/SimpleScalarProperties"
                                       :request-tests
                                       ((:id
                                         "XmlNamespaceSimpleScalarProperties"
                                         :protocol "aws.protocols#restXml"
                                         :method "PUT" :uri
                                         "/SimpleScalarProperties" :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body
                                         "<SimpleScalarPropertiesRequest xmlns=\"https://example.com\">
    <stringValue>string</stringValue>
    <trueBooleanValue>true</trueBooleanValue>
    <falseBooleanValue>false</falseBooleanValue>
    <byteValue>1</byteValue>
    <shortValue>2</shortValue>
    <integerValue>3</integerValue>
    <longValue>4</longValue>
    <floatValue>5.5</floatValue>
    <DoubleDribble>6.5</DoubleDribble>
    <Nested xmlns:xsi=\"https://example.com\" xsi:someName=\"nestedAttrValue\"></Nested>
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
                                          ("doubleValue" . 6.5d0)
                                          ("Nested"
                                           ("attrField" . "nestedAttrValue")))
                                         :documentation
                                         "Serializes simple scalar properties"))
                                       :response-tests
                                       ((:id
                                         "XmlNamespaceSimpleScalarProperties"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :headers
                                         (("Content-Type" . "application/xml")
                                          ("X-Foo" . "Foo"))
                                         :body
                                         "<SimpleScalarPropertiesResponse xmlns=\"https://example.com\">
    <stringValue>string</stringValue>
    <trueBooleanValue>true</trueBooleanValue>
    <falseBooleanValue>false</falseBooleanValue>
    <byteValue>1</byteValue>
    <shortValue>2</shortValue>
    <integerValue>3</integerValue>
    <longValue>4</longValue>
    <floatValue>5.5</floatValue>
    <DoubleDribble>6.5</DoubleDribble>
    <Nested xmlns:xsi=\"https://example.com\" xsi:someName=\"nestedAttrValue\"></Nested>
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
                                          ("doubleValue" . 6.5d0)
                                          ("Nested"
                                           ("attrField" . "nestedAttrValue")))
                                         :documentation
                                         "Serializes simple scalar properties")))
