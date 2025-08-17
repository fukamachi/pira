(uiop/package:define-package #:pira/freetier (:use)
                             (:export #:awsfree-tier-service #:account-id
                              #:account-plan-status #:account-plan-type
                              #:activities #:activity-id #:activity-reward
                              #:activity-status #:activity-summary
                              #:currency-code #:dimension #:dimension-values
                              #:expression #:expressions
                              #:filter-activity-statuses #:free-tier-usage
                              #:free-tier-usages #:generic-double
                              #:generic-string #:get-account-activity
                              #:get-account-plan-state #:get-free-tier-usage
                              #:language-code #:list-account-activities
                              #:match-option #:match-options #:max-results
                              #:monetary-amount #:next-page-token
                              #:upgrade-account-plan #:value #:values))
(common-lisp:in-package #:pira/freetier)

(smithy/sdk/service:define-service awsfree-tier-service :shape-name
                                   "AWSFreeTierService" :version "2023-09-07"
                                   :title "AWS Free Tier" :operations
                                   '(get-account-activity
                                     get-account-plan-state get-free-tier-usage
                                     list-account-activities
                                     upgrade-account-plan)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "FreeTier")
                                      ("endpointPrefix" . "freetier"))
                                     ("aws.auth#sigv4" ("name" . "freetier"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum account-plan-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:active "ACTIVE")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-enum account-plan-type
    common-lisp:nil
  (:free "FREE")
  (:paid "PAID"))

(smithy/sdk/shapes:define-list activities :member activity-summary)

(smithy/sdk/shapes:define-type activity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union activity-reward common-lisp:nil
                                ((credit :target-type monetary-amount
                                  :member-name "credit"))
                                (:shape-name "ActivityReward"))

(smithy/sdk/shapes:define-enum activity-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:expiring "EXPIRING"))

(smithy/sdk/shapes:define-structure activity-summary common-lisp:nil
                                    ((activity-id :target-type activity-id
                                      :required common-lisp:t :member-name
                                      "activityId")
                                     (title :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "title")
                                     (reward :target-type activity-reward
                                      :required common-lisp:t :member-name
                                      "reward")
                                     (status :target-type activity-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "ActivitySummary"))

(smithy/sdk/shapes:define-enum currency-code
    common-lisp:nil
  (:usd "USD"))

(smithy/sdk/shapes:define-enum dimension
    common-lisp:nil
  (:service "SERVICE")
  (:operation "OPERATION")
  (:usage-type "USAGE_TYPE")
  (:region "REGION")
  (:free-tier-type "FREE_TIER_TYPE")
  (:description "DESCRIPTION")
  (:usage-percentage "USAGE_PERCENTAGE"))

(smithy/sdk/shapes:define-structure dimension-values common-lisp:nil
                                    ((key :target-type dimension :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values")
                                     (match-options :target-type match-options
                                      :required common-lisp:t :member-name
                                      "MatchOptions"))
                                    (:shape-name "DimensionValues"))

(smithy/sdk/shapes:define-structure expression common-lisp:nil
                                    ((or :target-type expressions :member-name
                                      "Or")
                                     (and :target-type expressions :member-name
                                      "And")
                                     (not :target-type expression :member-name
                                      "Not")
                                     (dimensions :target-type dimension-values
                                      :member-name "Dimensions"))
                                    (:shape-name "Expression"))

(smithy/sdk/shapes:define-list expressions :member expression)

(smithy/sdk/shapes:define-list filter-activity-statuses :member activity-status)

(smithy/sdk/shapes:define-structure free-tier-usage common-lisp:nil
                                    ((service :target-type generic-string
                                      :member-name "service")
                                     (operation :target-type generic-string
                                      :member-name "operation")
                                     (usage-type :target-type generic-string
                                      :member-name "usageType")
                                     (region :target-type generic-string
                                      :member-name "region")
                                     (actual-usage-amount :target-type
                                      generic-double :member-name
                                      "actualUsageAmount")
                                     (forecasted-usage-amount :target-type
                                      generic-double :member-name
                                      "forecastedUsageAmount")
                                     (limit :target-type generic-double
                                      :member-name "limit")
                                     (unit :target-type generic-string
                                      :member-name "unit")
                                     (description :target-type generic-string
                                      :member-name "description")
                                     (free-tier-type :target-type
                                      generic-string :member-name
                                      "freeTierType"))
                                    (:shape-name "FreeTierUsage"))

(smithy/sdk/shapes:define-list free-tier-usages :member free-tier-usage)

(smithy/sdk/shapes:define-type generic-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-activity-request common-lisp:nil
                                ((activity-id :target-type activity-id
                                  :required common-lisp:t :member-name
                                  "activityId")
                                 (language-code :target-type language-code
                                  :member-name "languageCode"))
                                (:shape-name "GetAccountActivityRequest"))

(smithy/sdk/shapes:define-output get-account-activity-response common-lisp:nil
                                 ((activity-id :target-type activity-id
                                   :required common-lisp:t :member-name
                                   "activityId")
                                  (title :target-type generic-string :required
                                   common-lisp:t :member-name "title")
                                  (description :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "description")
                                  (status :target-type activity-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (instructions-url :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "instructionsUrl")
                                  (reward :target-type activity-reward
                                   :required common-lisp:t :member-name
                                   "reward")
                                  (estimated-time-to-complete-in-minutes
                                   :target-type smithy/sdk/smithy-types:integer
                                   :member-name
                                   "estimatedTimeToCompleteInMinutes")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt" :timestamp-format
                                   "date-time")
                                  (started-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "startedAt" :timestamp-format
                                   "date-time")
                                  (completed-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "completedAt" :timestamp-format
                                   "date-time"))
                                 (:shape-name "GetAccountActivityResponse"))

(smithy/sdk/shapes:define-input get-account-plan-state-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountPlanStateRequest"))

(smithy/sdk/shapes:define-output get-account-plan-state-response
                                 common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "accountId")
                                  (account-plan-type :target-type
                                   account-plan-type :required common-lisp:t
                                   :member-name "accountPlanType")
                                  (account-plan-status :target-type
                                   account-plan-status :required common-lisp:t
                                   :member-name "accountPlanStatus")
                                  (account-plan-remaining-credits :target-type
                                   monetary-amount :member-name
                                   "accountPlanRemainingCredits")
                                  (account-plan-expiration-date :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "accountPlanExpirationDate"
                                   :timestamp-format "date-time"))
                                 (:shape-name "GetAccountPlanStateResponse"))

(smithy/sdk/shapes:define-input get-free-tier-usage-request common-lisp:nil
                                ((filter :target-type expression :member-name
                                  "filter")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken"))
                                (:shape-name "GetFreeTierUsageRequest"))

(smithy/sdk/shapes:define-output get-free-tier-usage-response common-lisp:nil
                                 ((free-tier-usages :target-type
                                   free-tier-usages :required common-lisp:t
                                   :member-name "freeTierUsages")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetFreeTierUsageResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:en-us "en-US")
  (:en-gb "en-GB")
  (:id-id "id-ID")
  (:de-de "de-DE")
  (:es-es "es-ES")
  (:fr-fr "fr-FR")
  (:ja-jp "ja-JP")
  (:it-it "it-IT")
  (:pt-pt "pt-PT")
  (:ko-kr "ko-KR")
  (:zh-cn "zh-CN")
  (:zh-tw "zh-TW")
  (:tr-tr "tr-TR"))

(smithy/sdk/shapes:define-input list-account-activities-request common-lisp:nil
                                ((filter-activity-statuses :target-type
                                  filter-activity-statuses :member-name
                                  "filterActivityStatuses")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (language-code :target-type language-code
                                  :member-name "languageCode"))
                                (:shape-name "ListAccountActivitiesRequest"))

(smithy/sdk/shapes:define-output list-account-activities-response
                                 common-lisp:nil
                                 ((activities :target-type activities :required
                                   common-lisp:t :member-name "activities")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAccountActivitiesResponse"))

(smithy/sdk/shapes:define-enum match-option
    common-lisp:nil
  (:equals "EQUALS")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL"))

(smithy/sdk/shapes:define-list match-options :member match-option)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure monetary-amount common-lisp:nil
                                    ((amount :target-type generic-double
                                      :required common-lisp:t :member-name
                                      "amount")
                                     (unit :target-type currency-code :required
                                      common-lisp:t :member-name "unit"))
                                    (:shape-name "MonetaryAmount"))

(smithy/sdk/shapes:define-type next-page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input upgrade-account-plan-request common-lisp:nil
                                ((account-plan-type :target-type
                                  account-plan-type :required common-lisp:t
                                  :member-name "accountPlanType"))
                                (:shape-name "UpgradeAccountPlanRequest"))

(smithy/sdk/shapes:define-output upgrade-account-plan-response common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "accountId")
                                  (account-plan-type :target-type
                                   account-plan-type :required common-lisp:t
                                   :member-name "accountPlanType")
                                  (account-plan-status :target-type
                                   account-plan-status :required common-lisp:t
                                   :member-name "accountPlanStatus"))
                                 (:shape-name "UpgradeAccountPlanResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member value)

(smithy/sdk/operation:define-operation get-account-activity :shape-name
                                       "GetAccountActivity" :input
                                       get-account-activity-request :output
                                       get-account-activity-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-account-plan-state :shape-name
                                       "GetAccountPlanState" :input
                                       get-account-plan-state-request :output
                                       get-account-plan-state-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-free-tier-usage :shape-name
                                       "GetFreeTierUsage" :input
                                       get-free-tier-usage-request :output
                                       get-free-tier-usage-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-account-activities :shape-name
                                       "ListAccountActivities" :input
                                       list-account-activities-request :output
                                       list-account-activities-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation upgrade-account-plan :shape-name
                                       "UpgradeAccountPlan" :input
                                       upgrade-account-plan-request :output
                                       upgrade-account-plan-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
