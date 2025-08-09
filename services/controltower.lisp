(uiop/package:define-package #:pira/controltower (:use)
                             (:export #:awscontrol-tower-apis
                              #:access-denied-exception #:arn #:baseline-arn
                              #:baseline-operation
                              #:baseline-operation-resource
                              #:baseline-operation-status
                              #:baseline-operation-type #:baseline-resource
                              #:baseline-summary #:baseline-version #:baselines
                              #:conflict-exception #:control-identifier
                              #:control-identifiers #:control-operation
                              #:control-operation-filter
                              #:control-operation-resource
                              #:control-operation-status
                              #:control-operation-statuses
                              #:control-operation-summary
                              #:control-operation-type
                              #:control-operation-types #:control-operations
                              #:create-landing-zone #:create-landing-zone-input
                              #:create-landing-zone-output
                              #:delete-landing-zone #:delete-landing-zone-input
                              #:delete-landing-zone-output #:disable-baseline
                              #:disable-baseline-input
                              #:disable-baseline-output #:disable-control
                              #:disable-control-input #:disable-control-output
                              #:drift-status #:drift-status-summary
                              #:drift-statuses #:enable-baseline
                              #:enable-baseline-input #:enable-baseline-output
                              #:enable-control #:enable-control-input
                              #:enable-control-output
                              #:enabled-baseline-baseline-identifiers
                              #:enabled-baseline-details
                              #:enabled-baseline-drift-status
                              #:enabled-baseline-drift-status-summary
                              #:enabled-baseline-drift-statuses
                              #:enabled-baseline-drift-types
                              #:enabled-baseline-enablement-statuses
                              #:enabled-baseline-filter
                              #:enabled-baseline-inheritance-drift
                              #:enabled-baseline-parameter
                              #:enabled-baseline-parameter-document
                              #:enabled-baseline-parameter-summaries
                              #:enabled-baseline-parameter-summary
                              #:enabled-baseline-parameters
                              #:enabled-baseline-parent-identifiers
                              #:enabled-baseline-resource
                              #:enabled-baseline-summary
                              #:enabled-baseline-target-identifiers
                              #:enabled-baselines #:enabled-control-details
                              #:enabled-control-filter
                              #:enabled-control-identifiers
                              #:enabled-control-parameter
                              #:enabled-control-parameter-summaries
                              #:enabled-control-parameter-summary
                              #:enabled-control-parameters
                              #:enabled-control-resource
                              #:enabled-control-summary #:enabled-controls
                              #:enablement-status #:enablement-status-summary
                              #:enablement-statuses #:get-baseline
                              #:get-baseline-input #:get-baseline-operation
                              #:get-baseline-operation-input
                              #:get-baseline-operation-output
                              #:get-baseline-output #:get-control-operation
                              #:get-control-operation-input
                              #:get-control-operation-output
                              #:get-enabled-baseline
                              #:get-enabled-baseline-input
                              #:get-enabled-baseline-output
                              #:get-enabled-control #:get-enabled-control-input
                              #:get-enabled-control-output #:get-landing-zone
                              #:get-landing-zone-input
                              #:get-landing-zone-operation
                              #:get-landing-zone-operation-input
                              #:get-landing-zone-operation-output
                              #:get-landing-zone-output
                              #:internal-server-exception #:landing-zone-detail
                              #:landing-zone-drift-status
                              #:landing-zone-drift-status-summary
                              #:landing-zone-operation-detail
                              #:landing-zone-operation-filter
                              #:landing-zone-operation-resource
                              #:landing-zone-operation-status
                              #:landing-zone-operation-statuses
                              #:landing-zone-operation-summary
                              #:landing-zone-operation-type
                              #:landing-zone-operation-types
                              #:landing-zone-operations #:landing-zone-resource
                              #:landing-zone-status #:landing-zone-summaries
                              #:landing-zone-summary #:landing-zone-version
                              #:list-baselines #:list-baselines-input
                              #:list-baselines-max-results
                              #:list-baselines-output #:list-control-operations
                              #:list-control-operations-input
                              #:list-control-operations-max-results
                              #:list-control-operations-next-token
                              #:list-control-operations-output
                              #:list-enabled-baselines
                              #:list-enabled-baselines-input
                              #:list-enabled-baselines-max-results
                              #:list-enabled-baselines-next-token
                              #:list-enabled-baselines-output
                              #:list-enabled-controls
                              #:list-enabled-controls-input
                              #:list-enabled-controls-output
                              #:list-landing-zone-operations
                              #:list-landing-zone-operations-input
                              #:list-landing-zone-operations-max-results
                              #:list-landing-zone-operations-output
                              #:list-landing-zones #:list-landing-zones-input
                              #:list-landing-zones-max-results
                              #:list-landing-zones-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output #:manifest
                              #:max-results #:operation-identifier #:region
                              #:region-name #:reset-enabled-baseline
                              #:reset-enabled-baseline-input
                              #:reset-enabled-baseline-output
                              #:reset-enabled-control
                              #:reset-enabled-control-input
                              #:reset-enabled-control-output
                              #:reset-landing-zone #:reset-landing-zone-input
                              #:reset-landing-zone-output
                              #:resource-not-found-exception
                              #:service-quota-exceeded-exception #:tag-key
                              #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-input #:tag-resource-output
                              #:tag-value #:tagging-resource
                              #:target-identifier #:target-identifiers
                              #:target-regions #:throttling-exception
                              #:timestamp #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-enabled-baseline
                              #:update-enabled-baseline-input
                              #:update-enabled-baseline-output
                              #:update-enabled-control
                              #:update-enabled-control-input
                              #:update-enabled-control-output
                              #:update-landing-zone #:update-landing-zone-input
                              #:update-landing-zone-output
                              #:validation-exception))
(common-lisp:in-package #:pira/controltower)

(smithy/sdk/service:define-service awscontrol-tower-apis :shape-name
                                   "AWSControlTowerApis" :version "2018-05-10"
                                   :title "AWS Control Tower" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ControlTower")
                                      ("cloudFormationName" . "ControlTower")
                                      ("arnNamespace" . "controltower")
                                      ("endpointPrefix" . "controltower")
                                      ("cloudTrailEventSource"
                                       . "controltower.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "controltower"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type baseline-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure baseline-operation common-lisp:nil
                                    ((operation-identifier :target-type
                                      operation-identifier :member-name
                                      "operationIdentifier")
                                     (operation-type :target-type
                                      baseline-operation-type :member-name
                                      "operationType")
                                     (status :target-type
                                      baseline-operation-status :member-name
                                      "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage"))
                                    (:shape-name "BaselineOperation"))

common-lisp:nil

(smithy/sdk/shapes:define-enum baseline-operation-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-enum baseline-operation-type
    common-lisp:nil
  (:enable-baseline "ENABLE_BASELINE")
  (:disable-baseline "DISABLE_BASELINE")
  (:update-enabled-baseline "UPDATE_ENABLED_BASELINE")
  (:reset-enabled-baseline "RESET_ENABLED_BASELINE"))

common-lisp:nil

(smithy/sdk/shapes:define-structure baseline-summary common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "BaselineSummary"))

(smithy/sdk/shapes:define-type baseline-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list baselines :member baseline-summary)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type control-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list control-identifiers :member control-identifier)

(smithy/sdk/shapes:define-structure control-operation common-lisp:nil
                                    ((operation-type :target-type
                                      control-operation-type :member-name
                                      "operationType")
                                     (start-time :target-type timestamp
                                      :member-name "startTime"
                                      :timestamp-format "date-time")
                                     (end-time :target-type timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (status :target-type
                                      control-operation-status :member-name
                                      "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (operation-identifier :target-type
                                      operation-identifier :member-name
                                      "operationIdentifier")
                                     (control-identifier :target-type
                                      control-identifier :member-name
                                      "controlIdentifier")
                                     (target-identifier :target-type
                                      target-identifier :member-name
                                      "targetIdentifier")
                                     (enabled-control-identifier :target-type
                                      arn :member-name
                                      "enabledControlIdentifier"))
                                    (:shape-name "ControlOperation"))

(smithy/sdk/shapes:define-structure control-operation-filter common-lisp:nil
                                    ((control-identifiers :target-type
                                      control-identifiers :member-name
                                      "controlIdentifiers")
                                     (target-identifiers :target-type
                                      target-identifiers :member-name
                                      "targetIdentifiers")
                                     (enabled-control-identifiers :target-type
                                      enabled-control-identifiers :member-name
                                      "enabledControlIdentifiers")
                                     (statuses :target-type
                                      control-operation-statuses :member-name
                                      "statuses")
                                     (control-operation-types :target-type
                                      control-operation-types :member-name
                                      "controlOperationTypes"))
                                    (:shape-name "ControlOperationFilter"))

common-lisp:nil

(smithy/sdk/shapes:define-enum control-operation-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-list control-operation-statuses :member
                               control-operation-status)

(smithy/sdk/shapes:define-structure control-operation-summary common-lisp:nil
                                    ((operation-type :target-type
                                      control-operation-type :member-name
                                      "operationType")
                                     (start-time :target-type timestamp
                                      :member-name "startTime"
                                      :timestamp-format "date-time")
                                     (end-time :target-type timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (status :target-type
                                      control-operation-status :member-name
                                      "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (operation-identifier :target-type
                                      operation-identifier :member-name
                                      "operationIdentifier")
                                     (control-identifier :target-type
                                      control-identifier :member-name
                                      "controlIdentifier")
                                     (target-identifier :target-type
                                      target-identifier :member-name
                                      "targetIdentifier")
                                     (enabled-control-identifier :target-type
                                      arn :member-name
                                      "enabledControlIdentifier"))
                                    (:shape-name "ControlOperationSummary"))

(smithy/sdk/shapes:define-enum control-operation-type
    common-lisp:nil
  (:enable-control "ENABLE_CONTROL")
  (:disable-control "DISABLE_CONTROL")
  (:update-enabled-control "UPDATE_ENABLED_CONTROL")
  (:reset-enabled-control "RESET_ENABLED_CONTROL"))

(smithy/sdk/shapes:define-list control-operation-types :member
                               control-operation-type)

(smithy/sdk/shapes:define-list control-operations :member
                               control-operation-summary)

(smithy/sdk/shapes:define-input create-landing-zone-input common-lisp:nil
                                ((version :target-type landing-zone-version
                                  :required common-lisp:t :member-name
                                  "version")
                                 (manifest :target-type manifest :required
                                  common-lisp:t :member-name "manifest")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateLandingZoneInput"))

(smithy/sdk/shapes:define-output create-landing-zone-output common-lisp:nil
                                 ((arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "CreateLandingZoneOutput"))

(smithy/sdk/shapes:define-input delete-landing-zone-input common-lisp:nil
                                ((landing-zone-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "landingZoneIdentifier"))
                                (:shape-name "DeleteLandingZoneInput"))

(smithy/sdk/shapes:define-output delete-landing-zone-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "DeleteLandingZoneOutput"))

(smithy/sdk/shapes:define-input disable-baseline-input common-lisp:nil
                                ((enabled-baseline-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledBaselineIdentifier"))
                                (:shape-name "DisableBaselineInput"))

(smithy/sdk/shapes:define-output disable-baseline-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "DisableBaselineOutput"))

(smithy/sdk/shapes:define-input disable-control-input common-lisp:nil
                                ((control-identifier :target-type
                                  control-identifier :required common-lisp:t
                                  :member-name "controlIdentifier")
                                 (target-identifier :target-type
                                  target-identifier :required common-lisp:t
                                  :member-name "targetIdentifier"))
                                (:shape-name "DisableControlInput"))

(smithy/sdk/shapes:define-output disable-control-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "DisableControlOutput"))

(smithy/sdk/shapes:define-enum drift-status
    common-lisp:nil
  (:drifted "DRIFTED")
  (:in-sync "IN_SYNC")
  (:not-checking "NOT_CHECKING")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure drift-status-summary common-lisp:nil
                                    ((drift-status :target-type drift-status
                                      :member-name "driftStatus"))
                                    (:shape-name "DriftStatusSummary"))

(smithy/sdk/shapes:define-list drift-statuses :member drift-status)

(smithy/sdk/shapes:define-input enable-baseline-input common-lisp:nil
                                ((baseline-version :target-type
                                  baseline-version :required common-lisp:t
                                  :member-name "baselineVersion")
                                 (parameters :target-type
                                  enabled-baseline-parameters :member-name
                                  "parameters")
                                 (baseline-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "baselineIdentifier")
                                 (target-identifier :target-type arn :required
                                  common-lisp:t :member-name
                                  "targetIdentifier")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "EnableBaselineInput"))

(smithy/sdk/shapes:define-output enable-baseline-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn"))
                                 (:shape-name "EnableBaselineOutput"))

(smithy/sdk/shapes:define-input enable-control-input common-lisp:nil
                                ((control-identifier :target-type
                                  control-identifier :required common-lisp:t
                                  :member-name "controlIdentifier")
                                 (target-identifier :target-type
                                  target-identifier :required common-lisp:t
                                  :member-name "targetIdentifier")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (parameters :target-type
                                  enabled-control-parameters :member-name
                                  "parameters"))
                                (:shape-name "EnableControlInput"))

(smithy/sdk/shapes:define-output enable-control-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier")
                                  (arn :target-type arn :member-name "arn"))
                                 (:shape-name "EnableControlOutput"))

(smithy/sdk/shapes:define-list enabled-baseline-baseline-identifiers :member
                               arn)

(smithy/sdk/shapes:define-structure enabled-baseline-details common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (baseline-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "baselineIdentifier")
                                     (baseline-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "baselineVersion")
                                     (drift-status-summary :target-type
                                      enabled-baseline-drift-status-summary
                                      :member-name "driftStatusSummary")
                                     (target-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "targetIdentifier")
                                     (parent-identifier :target-type arn
                                      :member-name "parentIdentifier")
                                     (status-summary :target-type
                                      enablement-status-summary :required
                                      common-lisp:t :member-name
                                      "statusSummary")
                                     (parameters :target-type
                                      enabled-baseline-parameter-summaries
                                      :member-name "parameters"))
                                    (:shape-name "EnabledBaselineDetails"))

(smithy/sdk/shapes:define-enum enabled-baseline-drift-status
    common-lisp:nil
  (:in-sync "IN_SYNC")
  (:drifted "DRIFTED"))

(smithy/sdk/shapes:define-structure enabled-baseline-drift-status-summary
                                    common-lisp:nil
                                    ((types :target-type
                                      enabled-baseline-drift-types :member-name
                                      "types"))
                                    (:shape-name
                                     "EnabledBaselineDriftStatusSummary"))

(smithy/sdk/shapes:define-list enabled-baseline-drift-statuses :member
                               enabled-baseline-drift-status)

(smithy/sdk/shapes:define-structure enabled-baseline-drift-types
                                    common-lisp:nil
                                    ((inheritance :target-type
                                      enabled-baseline-inheritance-drift
                                      :member-name "inheritance"))
                                    (:shape-name "EnabledBaselineDriftTypes"))

(smithy/sdk/shapes:define-list enabled-baseline-enablement-statuses :member
                               enablement-status)

(smithy/sdk/shapes:define-structure enabled-baseline-filter common-lisp:nil
                                    ((target-identifiers :target-type
                                      enabled-baseline-target-identifiers
                                      :member-name "targetIdentifiers")
                                     (baseline-identifiers :target-type
                                      enabled-baseline-baseline-identifiers
                                      :member-name "baselineIdentifiers")
                                     (parent-identifiers :target-type
                                      enabled-baseline-parent-identifiers
                                      :member-name "parentIdentifiers")
                                     (statuses :target-type
                                      enabled-baseline-enablement-statuses
                                      :member-name "statuses")
                                     (inheritance-drift-statuses :target-type
                                      enabled-baseline-drift-statuses
                                      :member-name "inheritanceDriftStatuses"))
                                    (:shape-name "EnabledBaselineFilter"))

(smithy/sdk/shapes:define-structure enabled-baseline-inheritance-drift
                                    common-lisp:nil
                                    ((status :target-type
                                      enabled-baseline-drift-status
                                      :member-name "status"))
                                    (:shape-name
                                     "EnabledBaselineInheritanceDrift"))

(smithy/sdk/shapes:define-structure enabled-baseline-parameter common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      enabled-baseline-parameter-document
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "EnabledBaselineParameter"))

(smithy/sdk/shapes:define-type enabled-baseline-parameter-document
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-list enabled-baseline-parameter-summaries :member
                               enabled-baseline-parameter-summary)

(smithy/sdk/shapes:define-structure enabled-baseline-parameter-summary
                                    common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      enabled-baseline-parameter-document
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name
                                     "EnabledBaselineParameterSummary"))

(smithy/sdk/shapes:define-list enabled-baseline-parameters :member
                               enabled-baseline-parameter)

(smithy/sdk/shapes:define-list enabled-baseline-parent-identifiers :member arn)

common-lisp:nil

(smithy/sdk/shapes:define-structure enabled-baseline-summary common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (baseline-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "baselineIdentifier")
                                     (baseline-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "baselineVersion")
                                     (drift-status-summary :target-type
                                      enabled-baseline-drift-status-summary
                                      :member-name "driftStatusSummary")
                                     (target-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "targetIdentifier")
                                     (parent-identifier :target-type arn
                                      :member-name "parentIdentifier")
                                     (status-summary :target-type
                                      enablement-status-summary :required
                                      common-lisp:t :member-name
                                      "statusSummary"))
                                    (:shape-name "EnabledBaselineSummary"))

(smithy/sdk/shapes:define-list enabled-baseline-target-identifiers :member arn)

(smithy/sdk/shapes:define-list enabled-baselines :member
                               enabled-baseline-summary)

(smithy/sdk/shapes:define-structure enabled-control-details common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (control-identifier :target-type
                                      control-identifier :member-name
                                      "controlIdentifier")
                                     (target-identifier :target-type
                                      target-identifier :member-name
                                      "targetIdentifier")
                                     (target-regions :target-type
                                      target-regions :member-name
                                      "targetRegions")
                                     (status-summary :target-type
                                      enablement-status-summary :member-name
                                      "statusSummary")
                                     (drift-status-summary :target-type
                                      drift-status-summary :member-name
                                      "driftStatusSummary")
                                     (parameters :target-type
                                      enabled-control-parameter-summaries
                                      :member-name "parameters"))
                                    (:shape-name "EnabledControlDetails"))

(smithy/sdk/shapes:define-structure enabled-control-filter common-lisp:nil
                                    ((control-identifiers :target-type
                                      control-identifiers :member-name
                                      "controlIdentifiers")
                                     (statuses :target-type enablement-statuses
                                      :member-name "statuses")
                                     (drift-statuses :target-type
                                      drift-statuses :member-name
                                      "driftStatuses"))
                                    (:shape-name "EnabledControlFilter"))

(smithy/sdk/shapes:define-list enabled-control-identifiers :member arn)

(smithy/sdk/shapes:define-structure enabled-control-parameter common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:document
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "EnabledControlParameter"))

(smithy/sdk/shapes:define-list enabled-control-parameter-summaries :member
                               enabled-control-parameter-summary)

(smithy/sdk/shapes:define-structure enabled-control-parameter-summary
                                    common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:document
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name
                                     "EnabledControlParameterSummary"))

(smithy/sdk/shapes:define-list enabled-control-parameters :member
                               enabled-control-parameter)

common-lisp:nil

(smithy/sdk/shapes:define-structure enabled-control-summary common-lisp:nil
                                    ((control-identifier :target-type
                                      control-identifier :member-name
                                      "controlIdentifier")
                                     (arn :target-type arn :member-name "arn")
                                     (target-identifier :target-type
                                      target-identifier :member-name
                                      "targetIdentifier")
                                     (status-summary :target-type
                                      enablement-status-summary :member-name
                                      "statusSummary")
                                     (drift-status-summary :target-type
                                      drift-status-summary :member-name
                                      "driftStatusSummary"))
                                    (:shape-name "EnabledControlSummary"))

(smithy/sdk/shapes:define-list enabled-controls :member enabled-control-summary)

(smithy/sdk/shapes:define-enum enablement-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:under-change "UNDER_CHANGE"))

(smithy/sdk/shapes:define-structure enablement-status-summary common-lisp:nil
                                    ((status :target-type enablement-status
                                      :member-name "status")
                                     (last-operation-identifier :target-type
                                      operation-identifier :member-name
                                      "lastOperationIdentifier"))
                                    (:shape-name "EnablementStatusSummary"))

(smithy/sdk/shapes:define-list enablement-statuses :member enablement-status)

(smithy/sdk/shapes:define-input get-baseline-input common-lisp:nil
                                ((baseline-identifier :target-type baseline-arn
                                  :required common-lisp:t :member-name
                                  "baselineIdentifier"))
                                (:shape-name "GetBaselineInput"))

(smithy/sdk/shapes:define-input get-baseline-operation-input common-lisp:nil
                                ((operation-identifier :target-type
                                  operation-identifier :required common-lisp:t
                                  :member-name "operationIdentifier"))
                                (:shape-name "GetBaselineOperationInput"))

(smithy/sdk/shapes:define-output get-baseline-operation-output common-lisp:nil
                                 ((baseline-operation :target-type
                                   baseline-operation :required common-lisp:t
                                   :member-name "baselineOperation"))
                                 (:shape-name "GetBaselineOperationOutput"))

(smithy/sdk/shapes:define-output get-baseline-output common-lisp:nil
                                 ((arn :target-type baseline-arn :required
                                   common-lisp:t :member-name "arn")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "GetBaselineOutput"))

(smithy/sdk/shapes:define-input get-control-operation-input common-lisp:nil
                                ((operation-identifier :target-type
                                  operation-identifier :required common-lisp:t
                                  :member-name "operationIdentifier"))
                                (:shape-name "GetControlOperationInput"))

(smithy/sdk/shapes:define-output get-control-operation-output common-lisp:nil
                                 ((control-operation :target-type
                                   control-operation :required common-lisp:t
                                   :member-name "controlOperation"))
                                 (:shape-name "GetControlOperationOutput"))

(smithy/sdk/shapes:define-input get-enabled-baseline-input common-lisp:nil
                                ((enabled-baseline-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledBaselineIdentifier"))
                                (:shape-name "GetEnabledBaselineInput"))

(smithy/sdk/shapes:define-output get-enabled-baseline-output common-lisp:nil
                                 ((enabled-baseline-details :target-type
                                   enabled-baseline-details :member-name
                                   "enabledBaselineDetails"))
                                 (:shape-name "GetEnabledBaselineOutput"))

(smithy/sdk/shapes:define-input get-enabled-control-input common-lisp:nil
                                ((enabled-control-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledControlIdentifier"))
                                (:shape-name "GetEnabledControlInput"))

(smithy/sdk/shapes:define-output get-enabled-control-output common-lisp:nil
                                 ((enabled-control-details :target-type
                                   enabled-control-details :required
                                   common-lisp:t :member-name
                                   "enabledControlDetails"))
                                 (:shape-name "GetEnabledControlOutput"))

(smithy/sdk/shapes:define-input get-landing-zone-input common-lisp:nil
                                ((landing-zone-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "landingZoneIdentifier"))
                                (:shape-name "GetLandingZoneInput"))

(smithy/sdk/shapes:define-input get-landing-zone-operation-input
                                common-lisp:nil
                                ((operation-identifier :target-type
                                  operation-identifier :required common-lisp:t
                                  :member-name "operationIdentifier"))
                                (:shape-name "GetLandingZoneOperationInput"))

(smithy/sdk/shapes:define-output get-landing-zone-operation-output
                                 common-lisp:nil
                                 ((operation-details :target-type
                                   landing-zone-operation-detail :required
                                   common-lisp:t :member-name
                                   "operationDetails"))
                                 (:shape-name "GetLandingZoneOperationOutput"))

(smithy/sdk/shapes:define-output get-landing-zone-output common-lisp:nil
                                 ((landing-zone :target-type
                                   landing-zone-detail :required common-lisp:t
                                   :member-name "landingZone"))
                                 (:shape-name "GetLandingZoneOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure landing-zone-detail common-lisp:nil
                                    ((version :target-type landing-zone-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (manifest :target-type manifest :required
                                      common-lisp:t :member-name "manifest")
                                     (arn :target-type arn :member-name "arn")
                                     (status :target-type landing-zone-status
                                      :member-name "status")
                                     (latest-available-version :target-type
                                      landing-zone-version :member-name
                                      "latestAvailableVersion")
                                     (drift-status :target-type
                                      landing-zone-drift-status-summary
                                      :member-name "driftStatus"))
                                    (:shape-name "LandingZoneDetail"))

(smithy/sdk/shapes:define-enum landing-zone-drift-status
    common-lisp:nil
  (:drifted "DRIFTED")
  (:in-sync "IN_SYNC"))

(smithy/sdk/shapes:define-structure landing-zone-drift-status-summary
                                    common-lisp:nil
                                    ((status :target-type
                                      landing-zone-drift-status :member-name
                                      "status"))
                                    (:shape-name
                                     "LandingZoneDriftStatusSummary"))

(smithy/sdk/shapes:define-structure landing-zone-operation-detail
                                    common-lisp:nil
                                    ((operation-type :target-type
                                      landing-zone-operation-type :member-name
                                      "operationType")
                                     (operation-identifier :target-type
                                      operation-identifier :member-name
                                      "operationIdentifier")
                                     (status :target-type
                                      landing-zone-operation-status
                                      :member-name "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage"))
                                    (:shape-name "LandingZoneOperationDetail"))

(smithy/sdk/shapes:define-structure landing-zone-operation-filter
                                    common-lisp:nil
                                    ((types :target-type
                                      landing-zone-operation-types :member-name
                                      "types")
                                     (statuses :target-type
                                      landing-zone-operation-statuses
                                      :member-name "statuses"))
                                    (:shape-name "LandingZoneOperationFilter"))

common-lisp:nil

(smithy/sdk/shapes:define-enum landing-zone-operation-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-list landing-zone-operation-statuses :member
                               landing-zone-operation-status)

(smithy/sdk/shapes:define-structure landing-zone-operation-summary
                                    common-lisp:nil
                                    ((operation-type :target-type
                                      landing-zone-operation-type :member-name
                                      "operationType")
                                     (operation-identifier :target-type
                                      operation-identifier :member-name
                                      "operationIdentifier")
                                     (status :target-type
                                      landing-zone-operation-status
                                      :member-name "status"))
                                    (:shape-name "LandingZoneOperationSummary"))

(smithy/sdk/shapes:define-enum landing-zone-operation-type
    common-lisp:nil
  (:delete "DELETE")
  (:create "CREATE")
  (:update "UPDATE")
  (:reset "RESET"))

(smithy/sdk/shapes:define-list landing-zone-operation-types :member
                               landing-zone-operation-type)

(smithy/sdk/shapes:define-list landing-zone-operations :member
                               landing-zone-operation-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum landing-zone-status
    common-lisp:nil
  (:active "ACTIVE")
  (:processing "PROCESSING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list landing-zone-summaries :member
                               landing-zone-summary)

(smithy/sdk/shapes:define-structure landing-zone-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "arn"))
                                    (:shape-name "LandingZoneSummary"))

(smithy/sdk/shapes:define-type landing-zone-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-baselines-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  list-baselines-max-results :member-name
                                  "maxResults"))
                                (:shape-name "ListBaselinesInput"))

(smithy/sdk/shapes:define-type list-baselines-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-baselines-output common-lisp:nil
                                 ((baselines :target-type baselines :required
                                   common-lisp:t :member-name "baselines")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListBaselinesOutput"))

(smithy/sdk/shapes:define-input list-control-operations-input common-lisp:nil
                                ((filter :target-type control-operation-filter
                                  :member-name "filter")
                                 (next-token :target-type
                                  list-control-operations-next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-control-operations-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListControlOperationsInput"))

(smithy/sdk/shapes:define-type list-control-operations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-control-operations-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output list-control-operations-output common-lisp:nil
                                 ((control-operations :target-type
                                   control-operations :required common-lisp:t
                                   :member-name "controlOperations")
                                  (next-token :target-type
                                   list-control-operations-next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListControlOperationsOutput"))

(smithy/sdk/shapes:define-input list-enabled-baselines-input common-lisp:nil
                                ((filter :target-type enabled-baseline-filter
                                  :member-name "filter")
                                 (next-token :target-type
                                  list-enabled-baselines-next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-enabled-baselines-max-results
                                  :member-name "maxResults")
                                 (include-children :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeChildren"))
                                (:shape-name "ListEnabledBaselinesInput"))

(smithy/sdk/shapes:define-type list-enabled-baselines-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-enabled-baselines-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output list-enabled-baselines-output common-lisp:nil
                                 ((enabled-baselines :target-type
                                   enabled-baselines :required common-lisp:t
                                   :member-name "enabledBaselines")
                                  (next-token :target-type
                                   list-enabled-baselines-next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnabledBaselinesOutput"))

(smithy/sdk/shapes:define-input list-enabled-controls-input common-lisp:nil
                                ((target-identifier :target-type
                                  target-identifier :member-name
                                  "targetIdentifier")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filter :target-type enabled-control-filter
                                  :member-name "filter"))
                                (:shape-name "ListEnabledControlsInput"))

(smithy/sdk/shapes:define-output list-enabled-controls-output common-lisp:nil
                                 ((enabled-controls :target-type
                                   enabled-controls :required common-lisp:t
                                   :member-name "enabledControls")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListEnabledControlsOutput"))

(smithy/sdk/shapes:define-input list-landing-zone-operations-input
                                common-lisp:nil
                                ((filter :target-type
                                  landing-zone-operation-filter :member-name
                                  "filter")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  list-landing-zone-operations-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListLandingZoneOperationsInput"))

(smithy/sdk/shapes:define-type list-landing-zone-operations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-landing-zone-operations-output
                                 common-lisp:nil
                                 ((landing-zone-operations :target-type
                                   landing-zone-operations :required
                                   common-lisp:t :member-name
                                   "landingZoneOperations")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListLandingZoneOperationsOutput"))

(smithy/sdk/shapes:define-input list-landing-zones-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  list-landing-zones-max-results :member-name
                                  "maxResults"))
                                (:shape-name "ListLandingZonesInput"))

(smithy/sdk/shapes:define-type list-landing-zones-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-landing-zones-output common-lisp:nil
                                 ((landing-zones :target-type
                                   landing-zone-summaries :required
                                   common-lisp:t :member-name "landingZones")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListLandingZonesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type manifest smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type operation-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure region common-lisp:nil
                                    ((name :target-type region-name
                                      :member-name "name"))
                                    (:shape-name "Region"))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reset-enabled-baseline-input common-lisp:nil
                                ((enabled-baseline-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledBaselineIdentifier"))
                                (:shape-name "ResetEnabledBaselineInput"))

(smithy/sdk/shapes:define-output reset-enabled-baseline-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "ResetEnabledBaselineOutput"))

(smithy/sdk/shapes:define-input reset-enabled-control-input common-lisp:nil
                                ((enabled-control-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledControlIdentifier"))
                                (:shape-name "ResetEnabledControlInput"))

(smithy/sdk/shapes:define-output reset-enabled-control-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "ResetEnabledControlOutput"))

(smithy/sdk/shapes:define-input reset-landing-zone-input common-lisp:nil
                                ((landing-zone-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "landingZoneIdentifier"))
                                (:shape-name "ResetLandingZoneInput"))

(smithy/sdk/shapes:define-output reset-landing-zone-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "ResetLandingZoneOutput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type target-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-identifiers :member target-identifier)

(smithy/sdk/shapes:define-list target-regions :member region)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-enabled-baseline-input common-lisp:nil
                                ((baseline-version :target-type
                                  baseline-version :required common-lisp:t
                                  :member-name "baselineVersion")
                                 (parameters :target-type
                                  enabled-baseline-parameters :member-name
                                  "parameters")
                                 (enabled-baseline-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledBaselineIdentifier"))
                                (:shape-name "UpdateEnabledBaselineInput"))

(smithy/sdk/shapes:define-output update-enabled-baseline-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "UpdateEnabledBaselineOutput"))

(smithy/sdk/shapes:define-input update-enabled-control-input common-lisp:nil
                                ((parameters :target-type
                                  enabled-control-parameters :required
                                  common-lisp:t :member-name "parameters")
                                 (enabled-control-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "enabledControlIdentifier"))
                                (:shape-name "UpdateEnabledControlInput"))

(smithy/sdk/shapes:define-output update-enabled-control-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "UpdateEnabledControlOutput"))

(smithy/sdk/shapes:define-input update-landing-zone-input common-lisp:nil
                                ((version :target-type landing-zone-version
                                  :required common-lisp:t :member-name
                                  "version")
                                 (manifest :target-type manifest :required
                                  common-lisp:t :member-name "manifest")
                                 (landing-zone-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "landingZoneIdentifier"))
                                (:shape-name "UpdateLandingZoneInput"))

(smithy/sdk/shapes:define-output update-landing-zone-output common-lisp:nil
                                 ((operation-identifier :target-type
                                   operation-identifier :required common-lisp:t
                                   :member-name "operationIdentifier"))
                                 (:shape-name "UpdateLandingZoneOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-landing-zone :shape-name
                                       "CreateLandingZone" :input
                                       create-landing-zone-input :output
                                       create-landing-zone-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-landingzone" :code 200)

(smithy/sdk/operation:define-operation delete-landing-zone :shape-name
                                       "DeleteLandingZone" :input
                                       delete-landing-zone-input :output
                                       delete-landing-zone-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-landingzone" :code 200)

(smithy/sdk/operation:define-operation disable-baseline :shape-name
                                       "DisableBaseline" :input
                                       disable-baseline-input :output
                                       disable-baseline-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/disable-baseline"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-control :shape-name
                                       "DisableControl" :input
                                       disable-control-input :output
                                       disable-control-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/disable-control"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-baseline :shape-name
                                       "EnableBaseline" :input
                                       enable-baseline-input :output
                                       enable-baseline-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/enable-baseline"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-control :shape-name
                                       "EnableControl" :input
                                       enable-control-input :output
                                       enable-control-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/enable-control"
                                       :code 200)

(smithy/sdk/operation:define-operation get-baseline :shape-name "GetBaseline"
                                       :input get-baseline-input :output
                                       get-baseline-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-baseline"
                                       :code 200)

(smithy/sdk/operation:define-operation get-baseline-operation :shape-name
                                       "GetBaselineOperation" :input
                                       get-baseline-operation-input :output
                                       get-baseline-operation-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-baseline-operation" :code 200)

(smithy/sdk/operation:define-operation get-control-operation :shape-name
                                       "GetControlOperation" :input
                                       get-control-operation-input :output
                                       get-control-operation-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-control-operation" :code 200)

(smithy/sdk/operation:define-operation get-enabled-baseline :shape-name
                                       "GetEnabledBaseline" :input
                                       get-enabled-baseline-input :output
                                       get-enabled-baseline-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-enabled-baseline" :code 200)

(smithy/sdk/operation:define-operation get-enabled-control :shape-name
                                       "GetEnabledControl" :input
                                       get-enabled-control-input :output
                                       get-enabled-control-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-enabled-control" :code 200)

(smithy/sdk/operation:define-operation get-landing-zone :shape-name
                                       "GetLandingZone" :input
                                       get-landing-zone-input :output
                                       get-landing-zone-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-landingzone"
                                       :code 200)

(smithy/sdk/operation:define-operation get-landing-zone-operation :shape-name
                                       "GetLandingZoneOperation" :input
                                       get-landing-zone-operation-input :output
                                       get-landing-zone-operation-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-landingzone-operation" :code 200)

(smithy/sdk/operation:define-operation list-baselines :shape-name
                                       "ListBaselines" :input
                                       list-baselines-input :output
                                       list-baselines-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-baselines"
                                       :code 200)

(smithy/sdk/operation:define-operation list-control-operations :shape-name
                                       "ListControlOperations" :input
                                       list-control-operations-input :output
                                       list-control-operations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-control-operations" :code 200)

(smithy/sdk/operation:define-operation list-enabled-baselines :shape-name
                                       "ListEnabledBaselines" :input
                                       list-enabled-baselines-input :output
                                       list-enabled-baselines-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-enabled-baselines" :code 200)

(smithy/sdk/operation:define-operation list-enabled-controls :shape-name
                                       "ListEnabledControls" :input
                                       list-enabled-controls-input :output
                                       list-enabled-controls-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-enabled-controls" :code 200)

(smithy/sdk/operation:define-operation list-landing-zone-operations :shape-name
                                       "ListLandingZoneOperations" :input
                                       list-landing-zone-operations-input
                                       :output
                                       list-landing-zone-operations-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-landingzone-operations" :code 200)

(smithy/sdk/operation:define-operation list-landing-zones :shape-name
                                       "ListLandingZones" :input
                                       list-landing-zones-input :output
                                       list-landing-zones-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-landingzones"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation reset-enabled-baseline :shape-name
                                       "ResetEnabledBaseline" :input
                                       reset-enabled-baseline-input :output
                                       reset-enabled-baseline-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/reset-enabled-baseline" :code 200)

(smithy/sdk/operation:define-operation reset-enabled-control :shape-name
                                       "ResetEnabledControl" :input
                                       reset-enabled-control-input :output
                                       reset-enabled-control-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/reset-enabled-control" :code 200)

(smithy/sdk/operation:define-operation reset-landing-zone :shape-name
                                       "ResetLandingZone" :input
                                       reset-landing-zone-input :output
                                       reset-landing-zone-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/reset-landingzone"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-enabled-baseline :shape-name
                                       "UpdateEnabledBaseline" :input
                                       update-enabled-baseline-input :output
                                       update-enabled-baseline-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-enabled-baseline" :code 200)

(smithy/sdk/operation:define-operation update-enabled-control :shape-name
                                       "UpdateEnabledControl" :input
                                       update-enabled-control-input :output
                                       update-enabled-control-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-enabled-control" :code 200)

(smithy/sdk/operation:define-operation update-landing-zone :shape-name
                                       "UpdateLandingZone" :input
                                       update-landing-zone-input :output
                                       update-landing-zone-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-landingzone" :code 200)
