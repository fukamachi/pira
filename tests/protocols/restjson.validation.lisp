(uiop/package:define-package #:pira/tests/protocols/restjson.validation (:use)
                             (:export #:enum-list #:enum-map #:enum-string
                              #:enum-trait-string #:enum-union #:evil-string
                              #:length-blob #:length-list #:length-map
                              #:length-string #:malformed-enum
                              #:malformed-enum-input #:malformed-length
                              #:malformed-length-input
                              #:malformed-length-override
                              #:malformed-length-override-input
                              #:malformed-length-query-string
                              #:malformed-length-query-string-input
                              #:malformed-pattern #:malformed-pattern-input
                              #:malformed-pattern-override
                              #:malformed-pattern-override-input
                              #:malformed-range #:malformed-range-input
                              #:malformed-range-override
                              #:malformed-range-override-input
                              #:malformed-required #:malformed-required-input
                              #:malformed-unique-items
                              #:malformed-unique-items-input #:max-byte
                              #:max-float #:max-integer #:max-length-string
                              #:max-long #:max-short #:min-byte #:min-float
                              #:min-integer #:min-length-string #:min-long
                              #:min-short #:missing-key-structure
                              #:my-string-key #:pattern-list
                              #:pattern-list-override #:pattern-map
                              #:pattern-map-override #:pattern-string
                              #:pattern-union #:pattern-union-override
                              #:range-byte #:range-float #:range-integer
                              #:range-long #:range-short
                              #:recursive-enum-string #:recursive-structures
                              #:recursive-structures-input
                              #:recursive-union-one #:recursive-union-two
                              #:rest-json-validation #:sensitive-pattern-string
                              #:sensitive-validation
                              #:sensitive-validation-input
                              #:structure-set-with-no-key))
(common-lisp:in-package #:pira/tests/protocols/restjson.validation)

(smithy/sdk/service:define-service rest-json-validation :shape-name
                                   "RestJsonValidation" :version "2021-08-19"
                                   :title common-lisp:nil :operations
                                   '(malformed-enum malformed-length
                                     malformed-length-override
                                     malformed-length-query-string
                                     malformed-pattern
                                     malformed-pattern-override malformed-range
                                     malformed-range-override
                                     malformed-required malformed-unique-items
                                     recursive-structures sensitive-validation)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Rest Json Validation Protocol"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-list enum-list :member enum-string)

(smithy/sdk/shapes:define-map enum-map :key enum-string :value enum-string)

(smithy/sdk/shapes:define-enum enum-string
    common-lisp:nil
  (:abc "abc")
  (:def "def")
  (:ghi "ghi")
  (:jkl "jkl"))

(smithy/sdk/shapes:define-type enum-trait-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union enum-union common-lisp:nil
                                ((first :target-type enum-string :member-name
                                  "first")
                                 (second :target-type enum-string :member-name
                                  "second"))
                                (:shape-name "EnumUnion"))

(smithy/sdk/shapes:define-type evil-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type length-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list length-list :member length-string)

(smithy/sdk/shapes:define-map length-map :key length-string :value length-list)

(smithy/sdk/shapes:define-type length-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure malformed-enum-input common-lisp:nil
                                    ((string :target-type enum-string
                                      :member-name "string")
                                     (string-with-enum-trait :target-type
                                      enum-trait-string :member-name
                                      "stringWithEnumTrait")
                                     (list :target-type enum-list :member-name
                                      "list")
                                     (map :target-type enum-map :member-name
                                      "map")
                                     (union :target-type enum-union
                                      :member-name "union"))
                                    (:shape-name "MalformedEnumInput"))

(smithy/sdk/shapes:define-structure malformed-length-input common-lisp:nil
                                    ((blob :target-type length-blob
                                      :member-name "blob")
                                     (string :target-type length-string
                                      :member-name "string")
                                     (min-string :target-type min-length-string
                                      :member-name "minString")
                                     (max-string :target-type max-length-string
                                      :member-name "maxString")
                                     (list :target-type length-list
                                      :member-name "list")
                                     (map :target-type length-map :member-name
                                      "map"))
                                    (:shape-name "MalformedLengthInput"))

(smithy/sdk/shapes:define-structure malformed-length-override-input
                                    common-lisp:nil
                                    ((blob :target-type length-blob
                                      :member-name "blob")
                                     (string :target-type length-string
                                      :member-name "string")
                                     (min-string :target-type min-length-string
                                      :member-name "minString")
                                     (max-string :target-type max-length-string
                                      :member-name "maxString")
                                     (list :target-type length-list
                                      :member-name "list")
                                     (map :target-type length-map :member-name
                                      "map"))
                                    (:shape-name
                                     "MalformedLengthOverrideInput"))

(smithy/sdk/shapes:define-input malformed-length-query-string-input
                                common-lisp:nil
                                ((string :target-type length-string
                                  :member-name "string" :http-query "string"))
                                (:shape-name "MalformedLengthQueryStringInput"))

(smithy/sdk/shapes:define-structure malformed-pattern-input common-lisp:nil
                                    ((string :target-type pattern-string
                                      :member-name "string")
                                     (evil-string :target-type evil-string
                                      :member-name "evilString")
                                     (list :target-type pattern-list
                                      :member-name "list")
                                     (map :target-type pattern-map :member-name
                                      "map")
                                     (union :target-type pattern-union
                                      :member-name "union"))
                                    (:shape-name "MalformedPatternInput"))

(smithy/sdk/shapes:define-structure malformed-pattern-override-input
                                    common-lisp:nil
                                    ((string :target-type pattern-string
                                      :member-name "string")
                                     (list :target-type pattern-list-override
                                      :member-name "list")
                                     (map :target-type pattern-map-override
                                      :member-name "map")
                                     (union :target-type pattern-union-override
                                      :member-name "union"))
                                    (:shape-name
                                     "MalformedPatternOverrideInput"))

(smithy/sdk/shapes:define-structure malformed-range-input common-lisp:nil
                                    ((byte :target-type range-byte :member-name
                                      "byte")
                                     (min-byte :target-type min-byte
                                      :member-name "minByte")
                                     (max-byte :target-type max-byte
                                      :member-name "maxByte")
                                     (short :target-type range-short
                                      :member-name "short")
                                     (min-short :target-type min-short
                                      :member-name "minShort")
                                     (max-short :target-type max-short
                                      :member-name "maxShort")
                                     (integer :target-type range-integer
                                      :member-name "integer")
                                     (min-integer :target-type min-integer
                                      :member-name "minInteger")
                                     (max-integer :target-type max-integer
                                      :member-name "maxInteger")
                                     (long :target-type range-long :member-name
                                      "long")
                                     (min-long :target-type min-long
                                      :member-name "minLong")
                                     (max-long :target-type max-long
                                      :member-name "maxLong")
                                     (float :target-type range-float
                                      :member-name "float")
                                     (min-float :target-type min-float
                                      :member-name "minFloat")
                                     (max-float :target-type max-float
                                      :member-name "maxFloat"))
                                    (:shape-name "MalformedRangeInput"))

(smithy/sdk/shapes:define-structure malformed-range-override-input
                                    common-lisp:nil
                                    ((byte :target-type range-byte :member-name
                                      "byte")
                                     (min-byte :target-type min-byte
                                      :member-name "minByte")
                                     (max-byte :target-type max-byte
                                      :member-name "maxByte")
                                     (short :target-type range-short
                                      :member-name "short")
                                     (min-short :target-type min-short
                                      :member-name "minShort")
                                     (max-short :target-type max-short
                                      :member-name "maxShort")
                                     (integer :target-type range-integer
                                      :member-name "integer")
                                     (min-integer :target-type min-integer
                                      :member-name "minInteger")
                                     (max-integer :target-type max-integer
                                      :member-name "maxInteger")
                                     (long :target-type range-long :member-name
                                      "long")
                                     (min-long :target-type min-long
                                      :member-name "minLong")
                                     (max-long :target-type max-long
                                      :member-name "maxLong")
                                     (float :target-type range-float
                                      :member-name "float")
                                     (min-float :target-type min-float
                                      :member-name "minFloat")
                                     (max-float :target-type max-float
                                      :member-name "maxFloat"))
                                    (:shape-name "MalformedRangeOverrideInput"))

(smithy/sdk/shapes:define-input malformed-required-input common-lisp:nil
                                ((string :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "string")
                                 (string-in-query :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "stringInQuery"
                                  :http-query "stringInQuery")
                                 (string-in-header :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "stringInHeader"
                                  :http-header "string-in-headers"))
                                (:shape-name "MalformedRequiredInput"))

(smithy/sdk/shapes:define-structure malformed-unique-items-input
                                    common-lisp:nil
                                    ((blob-list :target-type blob-set
                                      :member-name "blobList")
                                     (boolean-list :target-type boolean-set
                                      :member-name "booleanList")
                                     (string-list :target-type string-set
                                      :member-name "stringList")
                                     (byte-list :target-type byte-set
                                      :member-name "byteList")
                                     (short-list :target-type short-set
                                      :member-name "shortList")
                                     (integer-list :target-type integer-set
                                      :member-name "integerList")
                                     (long-list :target-type long-set
                                      :member-name "longList")
                                     (timestamp-list :target-type timestamp-set
                                      :member-name "timestampList")
                                     (date-time-list :target-type date-time-set
                                      :member-name "dateTimeList")
                                     (http-date-list :target-type http-date-set
                                      :member-name "httpDateList")
                                     (enum-list :target-type foo-enum-set
                                      :member-name "enumList")
                                     (int-enum-list :target-type
                                      integer-enum-set :member-name
                                      "intEnumList")
                                     (list-list :target-type list-set
                                      :member-name "listList")
                                     (structure-list :target-type structure-set
                                      :member-name "structureList")
                                     (structure-list-with-no-key :target-type
                                      structure-set-with-no-key :member-name
                                      "structureListWithNoKey")
                                     (union-list :target-type union-set
                                      :member-name "unionList"))
                                    (:shape-name "MalformedUniqueItemsInput"))

(smithy/sdk/shapes:define-type max-byte smithy/sdk/smithy-types:byte)

(smithy/sdk/shapes:define-type max-float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type max-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-length-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-short smithy/sdk/smithy-types:short)

(smithy/sdk/shapes:define-type min-byte smithy/sdk/smithy-types:byte)

(smithy/sdk/shapes:define-type min-float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type min-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-length-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type min-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type min-short smithy/sdk/smithy-types:short)

(smithy/sdk/shapes:define-structure missing-key-structure common-lisp:nil
                                    ((hi :target-type my-string-key :required
                                      common-lisp:t :member-name "hi"))
                                    (:shape-name "MissingKeyStructure"))

(smithy/sdk/shapes:define-type my-string-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pattern-list :member pattern-string)

(smithy/sdk/shapes:define-list pattern-list-override :member pattern-string)

(smithy/sdk/shapes:define-map pattern-map :key pattern-string :value
                              pattern-string)

(smithy/sdk/shapes:define-map pattern-map-override :key pattern-string :value
                              pattern-string)

(smithy/sdk/shapes:define-type pattern-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union pattern-union common-lisp:nil
                                ((first :target-type pattern-string
                                  :member-name "first")
                                 (second :target-type pattern-string
                                  :member-name "second"))
                                (:shape-name "PatternUnion"))

(smithy/sdk/shapes:define-union pattern-union-override common-lisp:nil
                                ((first :target-type pattern-string
                                  :member-name "first")
                                 (second :target-type pattern-string
                                  :member-name "second"))
                                (:shape-name "PatternUnionOverride"))

(smithy/sdk/shapes:define-type range-byte smithy/sdk/smithy-types:byte)

(smithy/sdk/shapes:define-type range-float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type range-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type range-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type range-short smithy/sdk/smithy-types:short)

(smithy/sdk/shapes:define-enum recursive-enum-string
    common-lisp:nil
  (:abc "abc")
  (:def "def"))

(smithy/sdk/shapes:define-structure recursive-structures-input common-lisp:nil
                                    ((union :target-type recursive-union-one
                                      :member-name "union"))
                                    (:shape-name "RecursiveStructuresInput"))

(smithy/sdk/shapes:define-union recursive-union-one common-lisp:nil
                                ((string :target-type recursive-enum-string
                                  :member-name "string")
                                 (union :target-type recursive-union-two
                                  :member-name "union"))
                                (:shape-name "RecursiveUnionOne"))

(smithy/sdk/shapes:define-union recursive-union-two common-lisp:nil
                                ((string :target-type recursive-enum-string
                                  :member-name "string")
                                 (union :target-type recursive-union-one
                                  :member-name "union"))
                                (:shape-name "RecursiveUnionTwo"))

(smithy/sdk/shapes:define-type sensitive-pattern-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sensitive-validation-input common-lisp:nil
                                    ((string :target-type
                                      sensitive-pattern-string :member-name
                                      "string"))
                                    (:shape-name "SensitiveValidationInput"))

(smithy/sdk/shapes:define-list structure-set-with-no-key :member
                               missing-key-structure)

(smithy/sdk/operation:define-operation malformed-enum :shape-name
                                       "MalformedEnum" :input
                                       malformed-enum-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedEnum")

(smithy/sdk/operation:define-operation malformed-length :shape-name
                                       "MalformedLength" :input
                                       malformed-length-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedLength")

(smithy/sdk/operation:define-operation malformed-length-override :shape-name
                                       "MalformedLengthOverride" :input
                                       malformed-length-override-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedLengthOverride")

(smithy/sdk/operation:define-operation malformed-length-query-string
                                       :shape-name "MalformedLengthQueryString"
                                       :input
                                       malformed-length-query-string-input
                                       :output common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedLengthQueryString")

(smithy/sdk/operation:define-operation malformed-pattern :shape-name
                                       "MalformedPattern" :input
                                       malformed-pattern-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedPattern")

(smithy/sdk/operation:define-operation malformed-pattern-override :shape-name
                                       "MalformedPatternOverride" :input
                                       malformed-pattern-override-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedPatternOverride")

(smithy/sdk/operation:define-operation malformed-range :shape-name
                                       "MalformedRange" :input
                                       malformed-range-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedRange")

(smithy/sdk/operation:define-operation malformed-range-override :shape-name
                                       "MalformedRangeOverride" :input
                                       malformed-range-override-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedRangeOverride")

(smithy/sdk/operation:define-operation malformed-required :shape-name
                                       "MalformedRequired" :input
                                       malformed-required-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedRequired")

(smithy/sdk/operation:define-operation malformed-unique-items :shape-name
                                       "MalformedUniqueItems" :input
                                       malformed-unique-items-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/MalformedUniqueItems")

(smithy/sdk/operation:define-operation recursive-structures :shape-name
                                       "RecursiveStructures" :input
                                       recursive-structures-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/RecursiveStructures"
                                       :request-tests
                                       ((:id
                                         "RestJsonRecursiveStructuresValidate"
                                         :protocol "aws.protocols#restJson1"
                                         :method "POST" :uri
                                         "/RecursiveStructures" :headers
                                         (("content-type"
                                           . "application/json"))
                                         :body "{ \"union\" : {
    \"union\" : {
        \"union\" : { \"string\" : \"abc\" }
    }
  }
}"
                                         :body-media-type "application/json"
                                         :params
                                         (("union"
                                           ("union"
                                            ("union" ("string" . "abc")))))
                                         :documentation
                                         "Validation should work with recursive structures.")))

(smithy/sdk/operation:define-operation sensitive-validation :shape-name
                                       "SensitiveValidation" :input
                                       sensitive-validation-input :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/SensitiveValidation")
