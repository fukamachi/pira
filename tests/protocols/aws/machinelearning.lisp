(uiop/package:define-package #:pira/tests/protocols/aws/machinelearning (:use)
                             (:export #:amazon-ml-20141212 #:details-attributes
                              #:details-map #:details-value #:entity-id
                              #:error-code #:error-message #:label #:predict
                              #:prediction #:record #:score-value
                              #:score-value-per-label-map #:variable-name
                              #:variable-value #:vip-urlunvalidated
                              #:float-label))
(common-lisp:in-package #:pira/tests/protocols/aws/machinelearning)

(smithy/sdk/service:define-service amazon-ml-20141212 :shape-name
                                   "AmazonML_20141212" :version "2014-12-12"
                                   :title "Amazon Machine Learning" :operations
                                   '(predict) :xml-namespace
                                   '(:uri
                                     "http://machinelearning.amazonaws.com/doc/2014-12-12/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Machine Learning")
                                      ("arnNamespace" . "machinelearning")
                                      ("cloudFormationName"
                                       . "MachineLearning")
                                      ("cloudTrailEventSource"
                                       . "machinelearning.amazonaws.com")
                                      ("endpointPrefix" . "machinelearning"))
                                     ("aws.auth#sigv4"
                                      ("name" . "machinelearning"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum details-attributes
    common-lisp:nil
  (:predictive-model-type "PredictiveModelType")
  (:algorithm "Algorithm"))

(smithy/sdk/shapes:define-map details-map :key details-attributes :value
                              details-value)

(smithy/sdk/shapes:define-type details-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "LimitExceededException")
                                (:error-code 417))

(smithy/sdk/shapes:define-input predict-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (record :target-type record :required
                                  common-lisp:t :member-name "Record")
                                 (predict-endpoint :target-type
                                  vip-urlunvalidated :required common-lisp:t
                                  :member-name "PredictEndpoint"))
                                (:shape-name "PredictInput"))

(smithy/sdk/shapes:define-output predict-output common-lisp:nil
                                 ((prediction :target-type prediction
                                   :member-name "Prediction"))
                                 (:shape-name "PredictOutput"))

(smithy/sdk/shapes:define-structure prediction common-lisp:nil
                                    ((predicted-label :target-type label
                                      :member-name "predictedLabel")
                                     (predicted-value :target-type float-label
                                      :member-name "predictedValue")
                                     (predicted-scores :target-type
                                      score-value-per-label-map :member-name
                                      "predictedScores")
                                     (details :target-type details-map
                                      :member-name "details"))
                                    (:shape-name "Prediction"))

(smithy/sdk/shapes:define-error predictor-not-mounted-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PredictorNotMountedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map record :key variable-name :value variable-value)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type score-value smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-map score-value-per-label-map :key label :value
                              score-value)

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vip-urlunvalidated
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float-label smithy/sdk/smithy-types:float)

(smithy/sdk/operation:define-operation predict :shape-name "Predict" :input
                                       predict-input :output predict-output
                                       :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        predictor-not-mounted-exception
                                        resource-not-found-exception)
                                       :request-tests
                                       ((:id "MachinelearningPredictEndpoint"
                                         :protocol "aws.protocols#awsJson1_1"
                                         :method "POST" :uri "/" :host
                                         "example.com" :resolved-host
                                         "custom.example.com" :headers
                                         (("Content-Type"
                                           . "application/x-amz-json-1.1"))
                                         :body
                                         "{\"MLModelId\": \"foo\", \"Record\": {}, \"PredictEndpoint\": \"https://custom.example.com/\"}"
                                         :body-media-type "application/json"
                                         :params
                                         (("MLModelId" . "foo") ("Record")
                                          ("PredictEndpoint"
                                           . "https://custom.example.com/"))
                                         :documentation
                                         "MachineLearning's api makes use of generated endpoints that the
customer is then expected to use for the Predict operation. Having
to alter the endpoint for a specific operation would be cumbersome,
so an AWS client should be able to do it for them.")))
