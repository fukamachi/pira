(uiop/package:define-package #:pira/arc-zonal-shift (:use)
                             (:export #:applied-status #:applied-weights
                              #:autoshift #:autoshift-applied-status
                              #:autoshift-execution-status
                              #:autoshift-in-resource
                              #:autoshift-observer-notification
                              #:autoshift-observer-notification-status
                              #:autoshift-summaries #:autoshift-summary
                              #:autoshift-trigger-resource
                              #:autoshifts-in-resource #:availability-zone
                              #:availability-zones #:blocked-date
                              #:blocked-dates #:blocked-window
                              #:blocked-windows #:cancel-practice-run
                              #:cancel-zonal-shift #:conflict-exception-reason
                              #:control-condition #:control-condition-type
                              #:control-conditions
                              #:create-practice-run-configuration
                              #:delete-practice-run-configuration #:expires-in
                              #:expiry-time
                              #:get-autoshift-observer-notification-status
                              #:get-managed-resource #:list-autoshifts
                              #:list-managed-resources #:list-zonal-shifts
                              #:managed-resource #:managed-resource-summaries
                              #:managed-resource-summary #:max-results
                              #:metric-identifier #:perc-data-plane
                              #:practice-run-configuration
                              #:practice-run-configuration-resource
                              #:practice-run-outcome #:resource-arn
                              #:resource-identifier #:resource-name
                              #:shift-type #:start-practice-run #:start-time
                              #:start-zonal-shift
                              #:update-autoshift-observer-notification-status
                              #:update-practice-run-configuration
                              #:update-zonal-autoshift-configuration
                              #:update-zonal-shift
                              #:validation-exception-reason #:weight
                              #:zonal-autoshift-status #:zonal-shift
                              #:zonal-shift-comment #:zonal-shift-id
                              #:zonal-shift-in-resource #:zonal-shift-resource
                              #:zonal-shift-status #:zonal-shift-summaries
                              #:zonal-shift-summary #:zonal-shifts
                              #:zonal-shifts-in-resource))
(common-lisp:in-package #:pira/arc-zonal-shift)

(smithy/sdk/service:define-service perc-data-plane :shape-name "PercDataPlane"
                                   :version "2022-10-30" :title
                                   "AWS ARC - Zonal Shift" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ARC Zonal Shift")
                                      ("endpointPrefix" . "arc-zonal-shift")
                                      ("cloudFormationName" . "ARCZonalShift"))
                                     ("aws.auth#sigv4"
                                      ("name" . "arc-zonal-shift"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum applied-status
    common-lisp:nil
  (:applied "APPLIED")
  (:not-applied "NOT_APPLIED"))

(smithy/sdk/shapes:define-map applied-weights :key availability-zone :value
                              weight)

common-lisp:nil

(smithy/sdk/shapes:define-enum autoshift-applied-status
    common-lisp:nil
  (:applied "APPLIED")
  (:not-applied "NOT_APPLIED"))

(smithy/sdk/shapes:define-enum autoshift-execution-status
    common-lisp:nil
  (:active "ACTIVE")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-structure autoshift-in-resource common-lisp:nil
                                    ((applied-status :target-type
                                      autoshift-applied-status :required
                                      common-lisp:t :member-name
                                      "appliedStatus")
                                     (away-from :target-type availability-zone
                                      :required common-lisp:t :member-name
                                      "awayFrom")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime"))
                                    (:shape-name "AutoshiftInResource"))

common-lisp:nil

(smithy/sdk/shapes:define-enum autoshift-observer-notification-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list autoshift-summaries :member autoshift-summary)

(smithy/sdk/shapes:define-structure autoshift-summary common-lisp:nil
                                    ((away-from :target-type availability-zone
                                      :required common-lisp:t :member-name
                                      "awayFrom")
                                     (end-time :target-type expiry-time
                                      :member-name "endTime")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (status :target-type
                                      autoshift-execution-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "AutoshiftSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-list autoshifts-in-resource :member
                               autoshift-in-resource)

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zones :member availability-zone)

(smithy/sdk/shapes:define-type blocked-date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blocked-dates :member blocked-date)

(smithy/sdk/shapes:define-type blocked-window smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blocked-windows :member blocked-window)

(smithy/sdk/shapes:define-input cancel-practice-run-request common-lisp:nil
                                ((zonal-shift-id :target-type zonal-shift-id
                                  :required common-lisp:t :member-name
                                  "zonalShiftId" :http-label common-lisp:t))
                                (:shape-name "CancelPracticeRunRequest"))

(smithy/sdk/shapes:define-output cancel-practice-run-response common-lisp:nil
                                 ((zonal-shift-id :target-type zonal-shift-id
                                   :required common-lisp:t :member-name
                                   "zonalShiftId")
                                  (resource-identifier :target-type
                                   resource-identifier :required common-lisp:t
                                   :member-name "resourceIdentifier")
                                  (away-from :target-type availability-zone
                                   :required common-lisp:t :member-name
                                   "awayFrom")
                                  (expiry-time :target-type expiry-time
                                   :required common-lisp:t :member-name
                                   "expiryTime")
                                  (start-time :target-type start-time :required
                                   common-lisp:t :member-name "startTime")
                                  (status :target-type zonal-shift-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (comment :target-type zonal-shift-comment
                                   :required common-lisp:t :member-name
                                   "comment"))
                                 (:shape-name "CancelPracticeRunResponse"))

(smithy/sdk/shapes:define-input cancel-zonal-shift-request common-lisp:nil
                                ((zonal-shift-id :target-type zonal-shift-id
                                  :required common-lisp:t :member-name
                                  "zonalShiftId" :http-label common-lisp:t))
                                (:shape-name "CancelZonalShiftRequest"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type conflict-exception-reason
                                  :required common-lisp:t :member-name
                                  "reason")
                                 (zonal-shift-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "zonalShiftId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conflict-exception-reason
    common-lisp:nil
  (:zonal-shift-already-exists "ZonalShiftAlreadyExists")
  (:zonal-shift-status-not-active "ZonalShiftStatusNotActive")
  (:simultaneous-zonal-shifts-conflict "SimultaneousZonalShiftsConflict")
  (:practice-configuration-already-exists "PracticeConfigurationAlreadyExists")
  (:autoshift-enabled "AutoShiftEnabled")
  (:practice-configuration-does-not-exist "PracticeConfigurationDoesNotExist")
  (:zonal-autoshift-active "ZonalAutoshiftActive")
  (:practice-outcome-alarms-red "PracticeOutcomeAlarmsRed")
  (:practice-blocking-alarms-red "PracticeBlockingAlarmsRed")
  (:practice-in-blocked-dates "PracticeInBlockedDates")
  (:practice-in-blocked-windows "PracticeInBlockedWindows"))

(smithy/sdk/shapes:define-structure control-condition common-lisp:nil
                                    ((type :target-type control-condition-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (alarm-identifier :target-type
                                      metric-identifier :required common-lisp:t
                                      :member-name "alarmIdentifier"))
                                    (:shape-name "ControlCondition"))

(smithy/sdk/shapes:define-enum control-condition-type
    common-lisp:nil
  (:cloudwatch "CLOUDWATCH"))

(smithy/sdk/shapes:define-list control-conditions :member control-condition)

(smithy/sdk/shapes:define-input create-practice-run-configuration-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier")
                                 (blocked-windows :target-type blocked-windows
                                  :member-name "blockedWindows")
                                 (blocked-dates :target-type blocked-dates
                                  :member-name "blockedDates")
                                 (blocking-alarms :target-type
                                  control-conditions :member-name
                                  "blockingAlarms")
                                 (outcome-alarms :target-type
                                  control-conditions :required common-lisp:t
                                  :member-name "outcomeAlarms"))
                                (:shape-name
                                 "CreatePracticeRunConfigurationRequest"))

(smithy/sdk/shapes:define-output create-practice-run-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type resource-arn :required
                                   common-lisp:t :member-name "arn")
                                  (name :target-type resource-name :required
                                   common-lisp:t :member-name "name")
                                  (zonal-autoshift-status :target-type
                                   zonal-autoshift-status :required
                                   common-lisp:t :member-name
                                   "zonalAutoshiftStatus")
                                  (practice-run-configuration :target-type
                                   practice-run-configuration :required
                                   common-lisp:t :member-name
                                   "practiceRunConfiguration"))
                                 (:shape-name
                                  "CreatePracticeRunConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-practice-run-configuration-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeletePracticeRunConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-practice-run-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type resource-arn :required
                                   common-lisp:t :member-name "arn")
                                  (name :target-type resource-name :required
                                   common-lisp:t :member-name "name")
                                  (zonal-autoshift-status :target-type
                                   zonal-autoshift-status :required
                                   common-lisp:t :member-name
                                   "zonalAutoshiftStatus"))
                                 (:shape-name
                                  "DeletePracticeRunConfigurationResponse"))

(smithy/sdk/shapes:define-type expires-in smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiry-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input
 get-autoshift-observer-notification-status-request common-lisp:nil
 common-lisp:nil (:shape-name "GetAutoshiftObserverNotificationStatusRequest"))

(smithy/sdk/shapes:define-output
 get-autoshift-observer-notification-status-response common-lisp:nil
 ((status :target-type autoshift-observer-notification-status :required
   common-lisp:t :member-name "status"))
 (:shape-name "GetAutoshiftObserverNotificationStatusResponse"))

(smithy/sdk/shapes:define-input get-managed-resource-request common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetManagedResourceRequest"))

(smithy/sdk/shapes:define-output get-managed-resource-response common-lisp:nil
                                 ((arn :target-type resource-arn :member-name
                                   "arn")
                                  (name :target-type resource-name :member-name
                                   "name")
                                  (applied-weights :target-type applied-weights
                                   :required common-lisp:t :member-name
                                   "appliedWeights")
                                  (zonal-shifts :target-type
                                   zonal-shifts-in-resource :required
                                   common-lisp:t :member-name "zonalShifts")
                                  (autoshifts :target-type
                                   autoshifts-in-resource :member-name
                                   "autoshifts")
                                  (practice-run-configuration :target-type
                                   practice-run-configuration :member-name
                                   "practiceRunConfiguration")
                                  (zonal-autoshift-status :target-type
                                   zonal-autoshift-status :member-name
                                   "zonalAutoshiftStatus"))
                                 (:shape-name "GetManagedResourceResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-autoshifts-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (status :target-type
                                  autoshift-execution-status :member-name
                                  "status" :http-query "status")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAutoshiftsRequest"))

(smithy/sdk/shapes:define-output list-autoshifts-response common-lisp:nil
                                 ((items :target-type autoshift-summaries
                                   :member-name "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAutoshiftsResponse"))

(smithy/sdk/shapes:define-input list-managed-resources-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListManagedResourcesRequest"))

(smithy/sdk/shapes:define-output list-managed-resources-response
                                 common-lisp:nil
                                 ((items :target-type
                                   managed-resource-summaries :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListManagedResourcesResponse"))

(smithy/sdk/shapes:define-input list-zonal-shifts-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (status :target-type zonal-shift-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "resourceIdentifier" :http-query
                                  "resourceIdentifier"))
                                (:shape-name "ListZonalShiftsRequest"))

(smithy/sdk/shapes:define-output list-zonal-shifts-response common-lisp:nil
                                 ((items :target-type zonal-shift-summaries
                                   :member-name "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListZonalShiftsResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-list managed-resource-summaries :member
                               managed-resource-summary)

(smithy/sdk/shapes:define-structure managed-resource-summary common-lisp:nil
                                    ((arn :target-type resource-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (availability-zones :target-type
                                      availability-zones :required
                                      common-lisp:t :member-name
                                      "availabilityZones")
                                     (applied-weights :target-type
                                      applied-weights :member-name
                                      "appliedWeights")
                                     (zonal-shifts :target-type
                                      zonal-shifts-in-resource :member-name
                                      "zonalShifts")
                                     (autoshifts :target-type
                                      autoshifts-in-resource :member-name
                                      "autoshifts")
                                     (zonal-autoshift-status :target-type
                                      zonal-autoshift-status :member-name
                                      "zonalAutoshiftStatus")
                                     (practice-run-status :target-type
                                      zonal-autoshift-status :member-name
                                      "practiceRunStatus"))
                                    (:shape-name "ManagedResourceSummary"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metric-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure practice-run-configuration common-lisp:nil
                                    ((blocking-alarms :target-type
                                      control-conditions :member-name
                                      "blockingAlarms")
                                     (outcome-alarms :target-type
                                      control-conditions :required
                                      common-lisp:t :member-name
                                      "outcomeAlarms")
                                     (blocked-windows :target-type
                                      blocked-windows :member-name
                                      "blockedWindows")
                                     (blocked-dates :target-type blocked-dates
                                      :member-name "blockedDates"))
                                    (:shape-name "PracticeRunConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-enum practice-run-outcome
    common-lisp:nil
  (:failed "FAILED")
  (:interrupted "INTERRUPTED")
  (:pending "PENDING")
  (:succeeded "SUCCEEDED")
  (:capacity-check-failed "CAPACITY_CHECK_FAILED"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum shift-type
    common-lisp:nil
  (:zonal-shift "ZONAL_SHIFT")
  (:practice-run "PRACTICE_RUN")
  (:fis-experiment "FIS_EXPERIMENT")
  (:zonal-autoshift "ZONAL_AUTOSHIFT"))

(smithy/sdk/shapes:define-input start-practice-run-request common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier")
                                 (away-from :target-type availability-zone
                                  :required common-lisp:t :member-name
                                  "awayFrom")
                                 (comment :target-type zonal-shift-comment
                                  :required common-lisp:t :member-name
                                  "comment"))
                                (:shape-name "StartPracticeRunRequest"))

(smithy/sdk/shapes:define-output start-practice-run-response common-lisp:nil
                                 ((zonal-shift-id :target-type zonal-shift-id
                                   :required common-lisp:t :member-name
                                   "zonalShiftId")
                                  (resource-identifier :target-type
                                   resource-identifier :required common-lisp:t
                                   :member-name "resourceIdentifier")
                                  (away-from :target-type availability-zone
                                   :required common-lisp:t :member-name
                                   "awayFrom")
                                  (expiry-time :target-type expiry-time
                                   :required common-lisp:t :member-name
                                   "expiryTime")
                                  (start-time :target-type start-time :required
                                   common-lisp:t :member-name "startTime")
                                  (status :target-type zonal-shift-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (comment :target-type zonal-shift-comment
                                   :required common-lisp:t :member-name
                                   "comment"))
                                 (:shape-name "StartPracticeRunResponse"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input start-zonal-shift-request common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier")
                                 (away-from :target-type availability-zone
                                  :required common-lisp:t :member-name
                                  "awayFrom")
                                 (expires-in :target-type expires-in :required
                                  common-lisp:t :member-name "expiresIn")
                                 (comment :target-type zonal-shift-comment
                                  :required common-lisp:t :member-name
                                  "comment"))
                                (:shape-name "StartZonalShiftRequest"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input
 update-autoshift-observer-notification-status-request common-lisp:nil
 ((status :target-type autoshift-observer-notification-status :required
   common-lisp:t :member-name "status"))
 (:shape-name "UpdateAutoshiftObserverNotificationStatusRequest"))

(smithy/sdk/shapes:define-output
 update-autoshift-observer-notification-status-response common-lisp:nil
 ((status :target-type autoshift-observer-notification-status :required
   common-lisp:t :member-name "status"))
 (:shape-name "UpdateAutoshiftObserverNotificationStatusResponse"))

(smithy/sdk/shapes:define-input update-practice-run-configuration-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier" :http-label
                                  common-lisp:t)
                                 (blocked-windows :target-type blocked-windows
                                  :member-name "blockedWindows")
                                 (blocked-dates :target-type blocked-dates
                                  :member-name "blockedDates")
                                 (blocking-alarms :target-type
                                  control-conditions :member-name
                                  "blockingAlarms")
                                 (outcome-alarms :target-type
                                  control-conditions :member-name
                                  "outcomeAlarms"))
                                (:shape-name
                                 "UpdatePracticeRunConfigurationRequest"))

(smithy/sdk/shapes:define-output update-practice-run-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type resource-arn :required
                                   common-lisp:t :member-name "arn")
                                  (name :target-type resource-name :required
                                   common-lisp:t :member-name "name")
                                  (zonal-autoshift-status :target-type
                                   zonal-autoshift-status :required
                                   common-lisp:t :member-name
                                   "zonalAutoshiftStatus")
                                  (practice-run-configuration :target-type
                                   practice-run-configuration :required
                                   common-lisp:t :member-name
                                   "practiceRunConfiguration"))
                                 (:shape-name
                                  "UpdatePracticeRunConfigurationResponse"))

(smithy/sdk/shapes:define-input update-zonal-autoshift-configuration-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier" :http-label
                                  common-lisp:t)
                                 (zonal-autoshift-status :target-type
                                  zonal-autoshift-status :required
                                  common-lisp:t :member-name
                                  "zonalAutoshiftStatus"))
                                (:shape-name
                                 "UpdateZonalAutoshiftConfigurationRequest"))

(smithy/sdk/shapes:define-output update-zonal-autoshift-configuration-response
                                 common-lisp:nil
                                 ((resource-identifier :target-type
                                   resource-identifier :required common-lisp:t
                                   :member-name "resourceIdentifier")
                                  (zonal-autoshift-status :target-type
                                   zonal-autoshift-status :required
                                   common-lisp:t :member-name
                                   "zonalAutoshiftStatus"))
                                 (:shape-name
                                  "UpdateZonalAutoshiftConfigurationResponse"))

(smithy/sdk/shapes:define-input update-zonal-shift-request common-lisp:nil
                                ((zonal-shift-id :target-type zonal-shift-id
                                  :required common-lisp:t :member-name
                                  "zonalShiftId" :http-label common-lisp:t)
                                 (comment :target-type zonal-shift-comment
                                  :member-name "comment")
                                 (expires-in :target-type expires-in
                                  :member-name "expiresIn"))
                                (:shape-name "UpdateZonalShiftRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:invalid-expires-in "InvalidExpiresIn")
  (:invalid-status "InvalidStatus")
  (:missing-value "MissingValue")
  (:invalid-token "InvalidToken")
  (:invalid-resource-identifier "InvalidResourceIdentifier")
  (:invalid-az "InvalidAz")
  (:unsupported-az "UnsupportedAz")
  (:invalid-alarm-condition "InvalidAlarmCondition")
  (:invalid-condition-type "InvalidConditionType")
  (:invalid-practice-blocker "InvalidPracticeBlocker")
  (:fis-experiment-update-not-allowed "FISExperimentUpdateNotAllowed")
  (:autoshift-update-not-allowed "AutoshiftUpdateNotAllowed")
  (:unsupported-practice-cancel-shift-type
   "UnsupportedPracticeCancelShiftType"))

(smithy/sdk/shapes:define-type weight smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-enum zonal-autoshift-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure zonal-shift common-lisp:nil
                                    ((zonal-shift-id :target-type
                                      zonal-shift-id :required common-lisp:t
                                      :member-name "zonalShiftId")
                                     (resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (away-from :target-type availability-zone
                                      :required common-lisp:t :member-name
                                      "awayFrom")
                                     (expiry-time :target-type expiry-time
                                      :required common-lisp:t :member-name
                                      "expiryTime")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (status :target-type zonal-shift-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (comment :target-type zonal-shift-comment
                                      :required common-lisp:t :member-name
                                      "comment"))
                                    (:shape-name "ZonalShift"))

(smithy/sdk/shapes:define-type zonal-shift-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type zonal-shift-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure zonal-shift-in-resource common-lisp:nil
                                    ((applied-status :target-type
                                      applied-status :required common-lisp:t
                                      :member-name "appliedStatus")
                                     (zonal-shift-id :target-type
                                      zonal-shift-id :required common-lisp:t
                                      :member-name "zonalShiftId")
                                     (resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (away-from :target-type availability-zone
                                      :required common-lisp:t :member-name
                                      "awayFrom")
                                     (expiry-time :target-type expiry-time
                                      :required common-lisp:t :member-name
                                      "expiryTime")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (comment :target-type zonal-shift-comment
                                      :required common-lisp:t :member-name
                                      "comment")
                                     (shift-type :target-type shift-type
                                      :member-name "shiftType")
                                     (practice-run-outcome :target-type
                                      practice-run-outcome :member-name
                                      "practiceRunOutcome"))
                                    (:shape-name "ZonalShiftInResource"))

common-lisp:nil

(smithy/sdk/shapes:define-enum zonal-shift-status
    common-lisp:nil
  (:active "ACTIVE")
  (:expired "EXPIRED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-list zonal-shift-summaries :member
                               zonal-shift-summary)

(smithy/sdk/shapes:define-structure zonal-shift-summary common-lisp:nil
                                    ((zonal-shift-id :target-type
                                      zonal-shift-id :required common-lisp:t
                                      :member-name "zonalShiftId")
                                     (resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (away-from :target-type availability-zone
                                      :required common-lisp:t :member-name
                                      "awayFrom")
                                     (expiry-time :target-type expiry-time
                                      :required common-lisp:t :member-name
                                      "expiryTime")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (status :target-type zonal-shift-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (comment :target-type zonal-shift-comment
                                      :required common-lisp:t :member-name
                                      "comment")
                                     (shift-type :target-type shift-type
                                      :member-name "shiftType")
                                     (practice-run-outcome :target-type
                                      practice-run-outcome :member-name
                                      "practiceRunOutcome"))
                                    (:shape-name "ZonalShiftSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-list zonal-shifts-in-resource :member
                               zonal-shift-in-resource)

(smithy/sdk/operation:define-operation cancel-practice-run :shape-name
                                       "CancelPracticeRun" :input
                                       cancel-practice-run-request :output
                                       cancel-practice-run-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/practiceruns/{zonalShiftId}" :code 200)

(smithy/sdk/operation:define-operation cancel-zonal-shift :shape-name
                                       "CancelZonalShift" :input
                                       cancel-zonal-shift-request :output
                                       zonal-shift :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/zonalshifts/{zonalShiftId}" :code 200)

(smithy/sdk/operation:define-operation create-practice-run-configuration
                                       :shape-name
                                       "CreatePracticeRunConfiguration" :input
                                       create-practice-run-configuration-request
                                       :output
                                       create-practice-run-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/configuration"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-practice-run-configuration
                                       :shape-name
                                       "DeletePracticeRunConfiguration" :input
                                       delete-practice-run-configuration-request
                                       :output
                                       delete-practice-run-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configuration/{resourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-autoshift-observer-notification-status :shape-name
 "GetAutoshiftObserverNotificationStatus" :input
 get-autoshift-observer-notification-status-request :output
 get-autoshift-observer-notification-status-response :errors
 (access-denied-exception internal-server-exception throttling-exception)
 :method "GET" :uri "/autoshift-observer-notification" :code 200)

(smithy/sdk/operation:define-operation get-managed-resource :shape-name
                                       "GetManagedResource" :input
                                       get-managed-resource-request :output
                                       get-managed-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managedresources/{resourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-autoshifts :shape-name
                                       "ListAutoshifts" :input
                                       list-autoshifts-request :output
                                       list-autoshifts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/autoshifts" :code
                                       200)

(smithy/sdk/operation:define-operation list-managed-resources :shape-name
                                       "ListManagedResources" :input
                                       list-managed-resources-request :output
                                       list-managed-resources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/managedresources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-zonal-shifts :shape-name
                                       "ListZonalShifts" :input
                                       list-zonal-shifts-request :output
                                       list-zonal-shifts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/zonalshifts" :code
                                       200)

(smithy/sdk/operation:define-operation start-practice-run :shape-name
                                       "StartPracticeRun" :input
                                       start-practice-run-request :output
                                       start-practice-run-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/practiceruns"
                                       :code 200)

(smithy/sdk/operation:define-operation start-zonal-shift :shape-name
                                       "StartZonalShift" :input
                                       start-zonal-shift-request :output
                                       zonal-shift :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/zonalshifts" :code
                                       201)

(smithy/sdk/operation:define-operation
 update-autoshift-observer-notification-status :shape-name
 "UpdateAutoshiftObserverNotificationStatus" :input
 update-autoshift-observer-notification-status-request :output
 update-autoshift-observer-notification-status-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "PUT" :uri "/autoshift-observer-notification" :code 200)

(smithy/sdk/operation:define-operation update-practice-run-configuration
                                       :shape-name
                                       "UpdatePracticeRunConfiguration" :input
                                       update-practice-run-configuration-request
                                       :output
                                       update-practice-run-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/configuration/{resourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-zonal-autoshift-configuration
                                       :shape-name
                                       "UpdateZonalAutoshiftConfiguration"
                                       :input
                                       update-zonal-autoshift-configuration-request
                                       :output
                                       update-zonal-autoshift-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/managedresources/{resourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-zonal-shift :shape-name
                                       "UpdateZonalShift" :input
                                       update-zonal-shift-request :output
                                       zonal-shift :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/zonalshifts/{zonalShiftId}" :code 200)
