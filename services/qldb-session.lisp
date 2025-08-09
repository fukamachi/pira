(uiop/package:define-package #:pira/qldb-session (:use)
                             (:export #:abort-transaction-request
                              #:abort-transaction-result #:commit-digest
                              #:commit-transaction-request
                              #:commit-transaction-result #:end-session-request
                              #:end-session-result #:error-code #:error-message
                              #:execute-statement-request
                              #:execute-statement-result #:fetch-page-request
                              #:fetch-page-result #:iousage #:ion-binary
                              #:ion-text #:ledger-name #:page #:page-token
                              #:processing-time-milliseconds #:qldbsession
                              #:read-ios #:send-command #:session-token
                              #:start-session-request #:start-session-result
                              #:start-transaction-request
                              #:start-transaction-result #:statement
                              #:statement-parameters #:timing-information
                              #:transaction-id #:value-holder #:value-holders
                              #:write-ios))
(common-lisp:in-package #:pira/qldb-session)

(smithy/sdk/service:define-service qldbsession :shape-name "QLDBSession"
                                   :version "2019-07-11" :title
                                   "Amazon QLDB Session" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "QLDB Session")
                                      ("arnNamespace" . "qldb")
                                      ("cloudFormationName" . "QLDBSession")
                                      ("cloudTrailEventSource"
                                       . "qldbsession.amazonaws.com")
                                      ("endpointPrefix" . "session.qldb"))
                                     ("aws.auth#sigv4" ("name" . "qldb"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-structure abort-transaction-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AbortTransactionRequest"))

(smithy/sdk/shapes:define-structure abort-transaction-result common-lisp:nil
                                    ((timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation"))
                                    (:shape-name "AbortTransactionResult"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (code :target-type error-code :member-name
                                  "Code"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error capacity-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CapacityExceededException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type commit-digest smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure commit-transaction-request common-lisp:nil
                                    ((transaction-id :target-type
                                      transaction-id :required common-lisp:t
                                      :member-name "TransactionId")
                                     (commit-digest :target-type commit-digest
                                      :required common-lisp:t :member-name
                                      "CommitDigest"))
                                    (:shape-name "CommitTransactionRequest"))

(smithy/sdk/shapes:define-structure commit-transaction-result common-lisp:nil
                                    ((transaction-id :target-type
                                      transaction-id :member-name
                                      "TransactionId")
                                     (commit-digest :target-type commit-digest
                                      :member-name "CommitDigest")
                                     (timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation")
                                     (consumed-ios :target-type iousage
                                      :member-name "ConsumedIOs"))
                                    (:shape-name "CommitTransactionResult"))

(smithy/sdk/shapes:define-structure end-session-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EndSessionRequest"))

(smithy/sdk/shapes:define-structure end-session-result common-lisp:nil
                                    ((timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation"))
                                    (:shape-name "EndSessionResult"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execute-statement-request common-lisp:nil
                                    ((transaction-id :target-type
                                      transaction-id :required common-lisp:t
                                      :member-name "TransactionId")
                                     (statement :target-type statement
                                      :required common-lisp:t :member-name
                                      "Statement")
                                     (parameters :target-type
                                      statement-parameters :member-name
                                      "Parameters"))
                                    (:shape-name "ExecuteStatementRequest"))

(smithy/sdk/shapes:define-structure execute-statement-result common-lisp:nil
                                    ((first-page :target-type page :member-name
                                      "FirstPage")
                                     (timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation")
                                     (consumed-ios :target-type iousage
                                      :member-name "ConsumedIOs"))
                                    (:shape-name "ExecuteStatementResult"))

(smithy/sdk/shapes:define-structure fetch-page-request common-lisp:nil
                                    ((transaction-id :target-type
                                      transaction-id :required common-lisp:t
                                      :member-name "TransactionId")
                                     (next-page-token :target-type page-token
                                      :required common-lisp:t :member-name
                                      "NextPageToken"))
                                    (:shape-name "FetchPageRequest"))

(smithy/sdk/shapes:define-structure fetch-page-result common-lisp:nil
                                    ((page :target-type page :member-name
                                      "Page")
                                     (timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation")
                                     (consumed-ios :target-type iousage
                                      :member-name "ConsumedIOs"))
                                    (:shape-name "FetchPageResult"))

(smithy/sdk/shapes:define-structure iousage common-lisp:nil
                                    ((read-ios :target-type read-ios
                                      :member-name "ReadIOs")
                                     (write-ios :target-type write-ios
                                      :member-name "WriteIOs"))
                                    (:shape-name "IOUsage"))

(smithy/sdk/shapes:define-error invalid-session-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (code :target-type error-code :member-name
                                  "Code"))
                                (:shape-name "InvalidSessionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ion-binary smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type ion-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ledger-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error occ-conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OccConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure page common-lisp:nil
                                    ((values :target-type value-holders
                                      :member-name "Values")
                                     (next-page-token :target-type page-token
                                      :member-name "NextPageToken"))
                                    (:shape-name "Page"))

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type processing-time-milliseconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error rate-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RateExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type read-ios smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input send-command-request common-lisp:nil
                                ((session-token :target-type session-token
                                  :member-name "SessionToken")
                                 (start-session :target-type
                                  start-session-request :member-name
                                  "StartSession")
                                 (start-transaction :target-type
                                  start-transaction-request :member-name
                                  "StartTransaction")
                                 (end-session :target-type end-session-request
                                  :member-name "EndSession")
                                 (commit-transaction :target-type
                                  commit-transaction-request :member-name
                                  "CommitTransaction")
                                 (abort-transaction :target-type
                                  abort-transaction-request :member-name
                                  "AbortTransaction")
                                 (execute-statement :target-type
                                  execute-statement-request :member-name
                                  "ExecuteStatement")
                                 (fetch-page :target-type fetch-page-request
                                  :member-name "FetchPage"))
                                (:shape-name "SendCommandRequest"))

(smithy/sdk/shapes:define-output send-command-result common-lisp:nil
                                 ((start-session :target-type
                                   start-session-result :member-name
                                   "StartSession")
                                  (start-transaction :target-type
                                   start-transaction-result :member-name
                                   "StartTransaction")
                                  (end-session :target-type end-session-result
                                   :member-name "EndSession")
                                  (commit-transaction :target-type
                                   commit-transaction-result :member-name
                                   "CommitTransaction")
                                  (abort-transaction :target-type
                                   abort-transaction-result :member-name
                                   "AbortTransaction")
                                  (execute-statement :target-type
                                   execute-statement-result :member-name
                                   "ExecuteStatement")
                                  (fetch-page :target-type fetch-page-result
                                   :member-name "FetchPage"))
                                 (:shape-name "SendCommandResult"))

(smithy/sdk/shapes:define-type session-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-session-request common-lisp:nil
                                    ((ledger-name :target-type ledger-name
                                      :required common-lisp:t :member-name
                                      "LedgerName"))
                                    (:shape-name "StartSessionRequest"))

(smithy/sdk/shapes:define-structure start-session-result common-lisp:nil
                                    ((session-token :target-type session-token
                                      :member-name "SessionToken")
                                     (timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation"))
                                    (:shape-name "StartSessionResult"))

(smithy/sdk/shapes:define-structure start-transaction-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StartTransactionRequest"))

(smithy/sdk/shapes:define-structure start-transaction-result common-lisp:nil
                                    ((transaction-id :target-type
                                      transaction-id :member-name
                                      "TransactionId")
                                     (timing-information :target-type
                                      timing-information :member-name
                                      "TimingInformation"))
                                    (:shape-name "StartTransactionResult"))

(smithy/sdk/shapes:define-type statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list statement-parameters :member value-holder)

(smithy/sdk/shapes:define-structure timing-information common-lisp:nil
                                    ((processing-time-milliseconds :target-type
                                      processing-time-milliseconds :member-name
                                      "ProcessingTimeMilliseconds"))
                                    (:shape-name "TimingInformation"))

(smithy/sdk/shapes:define-type transaction-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure value-holder common-lisp:nil
                                    ((ion-binary :target-type ion-binary
                                      :member-name "IonBinary")
                                     (ion-text :target-type ion-text
                                      :member-name "IonText"))
                                    (:shape-name "ValueHolder"))

(smithy/sdk/shapes:define-list value-holders :member value-holder)

(smithy/sdk/shapes:define-type write-ios smithy/sdk/smithy-types:long)

(smithy/sdk/operation:define-operation send-command :shape-name "SendCommand"
                                       :input send-command-request :output
                                       send-command-result :errors
                                       (bad-request-exception
                                        capacity-exceeded-exception
                                        invalid-session-exception
                                        limit-exceeded-exception
                                        occ-conflict-exception
                                        rate-exceeded-exception))
