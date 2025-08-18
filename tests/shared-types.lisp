(uiop/package:define-package #:pira/tests/shared-types (:use)
                             (:export #:blob-list #:blob-set #:boolean-list
                              #:boolean-set #:byte-list #:byte-set #:date-time
                              #:date-time-list #:date-time-set #:double-list
                              #:epoch-seconds #:float-list #:foo-enum
                              #:foo-enum-list #:foo-enum-map #:foo-enum-set
                              #:foo-union #:greeting-list #:greeting-struct
                              #:http-date #:http-date-set #:integer-enum
                              #:integer-enum-list #:integer-enum-map
                              #:integer-enum-set #:integer-list #:integer-set
                              #:jpeg-blob #:list-set #:long-list #:long-set
                              #:nested-string-list #:short-list #:short-set
                              #:sparse-short-list #:sparse-string-list
                              #:sparse-string-map #:string-list
                              #:string-list-map #:string-map #:string-set
                              #:structure-set #:text-plain-blob
                              #:timestamp-list #:timestamp-set #:union-set))
(common-lisp:in-package #:pira/tests/shared-types)

(smithy/sdk/shapes:define-list blob-list :member smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list blob-set :member smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list boolean-list :member
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list boolean-set :member
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list byte-list :member smithy/sdk/smithy-types:byte)

(smithy/sdk/shapes:define-list byte-set :member smithy/sdk/smithy-types:byte)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list date-time-list :member date-time)

(smithy/sdk/shapes:define-list date-time-set :member date-time)

(smithy/sdk/shapes:define-list double-list :member
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type epoch-seconds smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list float-list :member smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-enum foo-enum
    common-lisp:nil
  (:foo "Foo")
  (:baz "Baz")
  (:bar "Bar")
  (:one "1")
  (:zero "0"))

(smithy/sdk/shapes:define-list foo-enum-list :member foo-enum)

(smithy/sdk/shapes:define-map foo-enum-map :key smithy/sdk/smithy-types:string
                              :value foo-enum)

(smithy/sdk/shapes:define-list foo-enum-set :member foo-enum)

(smithy/sdk/shapes:define-union foo-union common-lisp:nil
                                ((string :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "string")
                                 (integer :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integer"))
                                (:shape-name "FooUnion"))

(smithy/sdk/shapes:define-list greeting-list :member greeting-struct)

(smithy/sdk/shapes:define-structure greeting-struct common-lisp:nil
                                    ((hi :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hi"))
                                    (:shape-name "GreetingStruct"))

(smithy/sdk/shapes:define-type http-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list http-date-set :member http-date)

(smithy/sdk/shapes:define-enum integer-enum
    common-lisp:nil
  (:a 1)
  (:b 2)
  (:c 3))

(smithy/sdk/shapes:define-list integer-enum-list :member integer-enum)

(smithy/sdk/shapes:define-map integer-enum-map :key
                              smithy/sdk/smithy-types:string :value
                              integer-enum)

(smithy/sdk/shapes:define-list integer-enum-set :member integer-enum)

(smithy/sdk/shapes:define-list integer-list :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list integer-set :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type jpeg-blob smithy/sdk/smithy-types:blob
                               :media-type "image/jpeg")

(smithy/sdk/shapes:define-list list-set :member string-list)

(smithy/sdk/shapes:define-list long-list :member smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list long-set :member smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list nested-string-list :member string-list)

(smithy/sdk/shapes:define-list short-list :member smithy/sdk/smithy-types:short)

(smithy/sdk/shapes:define-list short-set :member smithy/sdk/smithy-types:short)

(smithy/sdk/shapes:define-list sparse-short-list :member
                               smithy/sdk/smithy-types:short)

(smithy/sdk/shapes:define-list sparse-string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map sparse-string-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-list-map :key
                              smithy/sdk/smithy-types:string :value string-list)

(smithy/sdk/shapes:define-map string-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-set :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list structure-set :member greeting-struct)

(smithy/sdk/shapes:define-type text-plain-blob smithy/sdk/smithy-types:blob
                               :media-type "text/plain")

(smithy/sdk/shapes:define-list timestamp-list :member
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list timestamp-set :member
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list union-set :member foo-union)
