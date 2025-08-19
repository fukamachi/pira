(uiop/package:define-package #:pira/tests/protocols/rpcv2cbor
                             (:use #:pira/tests/shared-types)
                             (:export #:non-query-compatible-operation
                              #:non-query-compatible-rpc-v2protocol
                              #:query-compatible-operation
                              #:query-compatible-rpc-v2protocol))
(common-lisp:in-package #:pira/tests/protocols/rpcv2cbor)

(smithy/sdk/service:define-service non-query-compatible-rpc-v2protocol
                                   :shape-name
                                   "NonQueryCompatibleRpcV2Protocol" :version
                                   "2025-06-20" :title
                                   "Non Query Compatible RpcV2 Protocol Service"
                                   :operations
                                   '(non-query-compatible-operation) :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Non Query Compatible RpcV2 Protocol"))
                                     ("aws.auth#sigv4"
                                      ("name"
                                       . "nonquerycompatiblerpcv2protocol"))))

(smithy/sdk/service:define-service query-compatible-rpc-v2protocol :shape-name
                                   "QueryCompatibleRpcV2Protocol" :version
                                   "2025-06-20" :title
                                   "Query Compatible RpcV2 Protocol Service"
                                   :operations '(query-compatible-operation)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Query Compatible RpcV2 Protocol"))
                                     ("aws.auth#sigv4"
                                      ("name"
                                       . "querycompatiblerpcv2protocol"))
                                     ("aws.protocols#awsQueryCompatible")))

(smithy/sdk/shapes:define-error custom-code-error common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "CustomCodeError")
                                (:error-name "Customized") (:error-code 400))

(smithy/sdk/shapes:define-error no-custom-code-error common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "NoCustomCodeError")
                                (:error-code 400))

(smithy/sdk/operation:define-operation non-query-compatible-operation
                                       :shape-name
                                       "NonQueryCompatibleOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors common-lisp:nil
                                       :request-tests
                                       ((:id
                                         "NonQueryCompatibleRpcV2CborForbidsQueryModeHeader"
                                         :protocol "smithy.protocols#rpcv2Cbor"
                                         :method "POST" :uri
                                         "/service/NonQueryCompatibleRpcV2Protocol/operation/NonQueryCompatibleOperation"
                                         :headers
                                         (("smithy-protocol" . "rpc-v2-cbor")
                                          ("Accept" . "application/cbor"))
                                         :forbid-headers #("x-amzn-query-mode")
                                         :body "" :documentation
                                         "The query mode header MUST NOT be set on non-query-compatible services.")))

(smithy/sdk/operation:define-operation query-compatible-operation :shape-name
                                       "QueryCompatibleOperation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (custom-code-error no-custom-code-error)
                                       :request-tests
                                       ((:id
                                         "QueryCompatibleRpcV2CborSendsQueryModeHeader"
                                         :protocol "smithy.protocols#rpcv2Cbor"
                                         :method "POST" :uri
                                         "/service/QueryCompatibleRpcV2Protocol/operation/QueryCompatibleOperation"
                                         :headers
                                         (("smithy-protocol" . "rpc-v2-cbor")
                                          ("Accept" . "application/cbor")
                                          ("x-amzn-query-mode" . "true"))
                                         :forbid-headers
                                         #("Content-Type" "X-Amz-Target") :body
                                         "" :documentation
                                         "Clients for query-compatible services MUST send the x-amzn-query-mode header.")))

(rove:deftest rpcv2cbor
  (pira/tests/runner:run-service-tests))
