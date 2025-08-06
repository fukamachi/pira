(defsystem "aws-core"
  :depends-on ("smithy/sdk"
               "dexador"
               "quri"
               "trivial-timeout"
               "aws/sts"
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
     (:file "rest-xml")))
   (:file "main")))
