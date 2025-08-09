(uiop/package:define-package #:pira/forecastquery (:use)
                             (:export #:amazon-forecast-runtime #:arn
                              #:attribute-name #:attribute-value #:data-point
                              #:date-time #:double #:error-message #:filters
                              #:forecast #:invalid-input-exception
                              #:invalid-next-token-exception
                              #:limit-exceeded-exception #:long-arn
                              #:next-token #:predictions #:query-forecast
                              #:query-forecast-request
                              #:query-forecast-response
                              #:query-what-if-forecast
                              #:query-what-if-forecast-request
                              #:query-what-if-forecast-response
                              #:resource-in-use-exception
                              #:resource-not-found-exception #:statistic
                              #:time-series #:timestamp))
(common-lisp:in-package #:pira/forecastquery)

(smithy/sdk/service:define-service amazon-forecast-runtime :shape-name
                                   "AmazonForecastRuntime" :version
                                   "2018-06-26" :title
                                   "Amazon Forecast Query Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "forecastquery")
                                      ("arnNamespace" . "forecast")
                                      ("cloudFormationName" . "Forecastquery")
                                      ("cloudTrailEventSource"
                                       . "forecastquery.amazonaws.com")
                                      ("endpointPrefix" . "forecastquery"))
                                     ("aws.auth#sigv4" ("name" . "forecast"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-point common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (value :target-type double :member-name
                                      "Value"))
                                    (:shape-name "DataPoint"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map filters :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-structure forecast common-lisp:nil
                                    ((predictions :target-type predictions
                                      :member-name "Predictions"))
                                    (:shape-name "Forecast"))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type long-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map predictions :key statistic :value time-series)

(smithy/sdk/shapes:define-input query-forecast-request common-lisp:nil
                                ((forecast-arn :target-type arn :required
                                  common-lisp:t :member-name "ForecastArn")
                                 (start-date :target-type date-time
                                  :member-name "StartDate")
                                 (end-date :target-type date-time :member-name
                                  "EndDate")
                                 (filters :target-type filters :required
                                  common-lisp:t :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "QueryForecastRequest"))

(smithy/sdk/shapes:define-output query-forecast-response common-lisp:nil
                                 ((forecast :target-type forecast :member-name
                                   "Forecast"))
                                 (:shape-name "QueryForecastResponse"))

(smithy/sdk/shapes:define-input query-what-if-forecast-request common-lisp:nil
                                ((what-if-forecast-arn :target-type long-arn
                                  :required common-lisp:t :member-name
                                  "WhatIfForecastArn")
                                 (start-date :target-type date-time
                                  :member-name "StartDate")
                                 (end-date :target-type date-time :member-name
                                  "EndDate")
                                 (filters :target-type filters :required
                                  common-lisp:t :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "QueryWhatIfForecastRequest"))

(smithy/sdk/shapes:define-output query-what-if-forecast-response
                                 common-lisp:nil
                                 ((forecast :target-type forecast :member-name
                                   "Forecast"))
                                 (:shape-name "QueryWhatIfForecastResponse"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type statistic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list time-series :member data-point)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation query-forecast :shape-name
                                       "QueryForecast" :input
                                       query-forecast-request :output
                                       query-forecast-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation query-what-if-forecast :shape-name
                                       "QueryWhatIfForecast" :input
                                       query-what-if-forecast-request :output
                                       query-what-if-forecast-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))
