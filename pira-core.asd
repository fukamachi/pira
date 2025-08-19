(defsystem "pira-core"
  :author "Eitaro Fukamachi"
  :license "MIT"
  :version (:read-file-form "version.sexp")
  :description "The core system of Pira, an unofficial AWS SDK for Common Lisp"
  :depends-on ("smithy/sdk"
               "dexador"
               "quri"
               "trivial-timeout"
               "pira/sts"
               "local-time"
               "yason"
               "cl-ppcre"
               "alexandria"
               "assoc-utils"
               "parser.ini"
               "aws-sign4"
               "ironclad/core")
  :pathname "src"
  :serial t
  :components
  ((:file "config")
   (:file "ec2metadata")
   (:file "session")
   (:module "credentials-subpackages"
    :pathname "credentials"
    :components
    ((:file "base")
     (:file "env")
     (:file "shared")
     (:file "ec2role")
     (:file "assume-role")))
   (:file "credentials")
   (:file "shared-config")
   (:file "make-session")
   (:file "api")
   (:module "protocols"
    :components
    ((:file "aws")
     (:file "rest-json1")
     (:file "aws-json")
     (:file "rest-xml")
     (:file "aws-query")))
   (:file "main"))
  :in-order-to ((test-op (test-op "pira-tests"))))

(defsystem "pira-core/codegen"
  :depends-on ("smithy")
  :pathname "src"
  :components
  ((:file "codegen")))
