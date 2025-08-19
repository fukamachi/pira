(defsystem "pira-tests"
  :depends-on ("rove"
               "smithy/sdk"
               "alexandria")
  :pathname "tests"
  :serial t
  :components
  ((:file "runner")
   (:file "shared-types")
   (:module "protocols"
    :components
    ((:file "restjson"))))
  :perform (test-op (op c) (symbol-call :rove :run c)))
