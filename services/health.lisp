(uiop/package:define-package #:pira/health (:use)
                             (:export #:awshealth-20160804
                              #:account-entity-aggregate
                              #:account-entity-aggregates-list
                              #:affected-entity
                              #:concurrent-modification-exception
                              #:date-time-range
                              #:describe-affected-accounts-for-organization
                              #:describe-affected-accounts-for-organization-request
                              #:describe-affected-accounts-for-organization-response
                              #:describe-affected-entities
                              #:describe-affected-entities-for-organization
                              #:describe-affected-entities-for-organization-failed-set
                              #:describe-affected-entities-for-organization-request
                              #:describe-affected-entities-for-organization-response
                              #:describe-affected-entities-request
                              #:describe-affected-entities-response
                              #:describe-entity-aggregates
                              #:describe-entity-aggregates-for-organization
                              #:describe-entity-aggregates-for-organization-request
                              #:describe-entity-aggregates-for-organization-response
                              #:describe-entity-aggregates-request
                              #:describe-entity-aggregates-response
                              #:describe-event-aggregates
                              #:describe-event-aggregates-request
                              #:describe-event-aggregates-response
                              #:describe-event-details
                              #:describe-event-details-failed-set
                              #:describe-event-details-for-organization
                              #:describe-event-details-for-organization-failed-set
                              #:describe-event-details-for-organization-request
                              #:describe-event-details-for-organization-response
                              #:describe-event-details-for-organization-successful-set
                              #:describe-event-details-request
                              #:describe-event-details-response
                              #:describe-event-details-successful-set
                              #:describe-event-types
                              #:describe-event-types-request
                              #:describe-event-types-response #:describe-events
                              #:describe-events-for-organization
                              #:describe-events-for-organization-request
                              #:describe-events-for-organization-response
                              #:describe-events-request
                              #:describe-events-response
                              #:describe-health-service-status-for-organization
                              #:describe-health-service-status-for-organization-response
                              #:disable-health-service-access-for-organization
                              #:enable-health-service-access-for-organization
                              #:entity-account-filter #:entity-aggregate
                              #:entity-aggregate-list #:entity-filter
                              #:entity-list #:event #:event-account-filter
                              #:event-aggregate #:event-aggregate-list
                              #:event-arns-list #:event-description
                              #:event-description2 #:event-details
                              #:event-details-error-item #:event-filter
                              #:event-list #:event-type #:event-type2
                              #:event-type-category-list #:event-type-code-list
                              #:event-type-filter #:event-type-list
                              #:invalid-pagination-token
                              #:organization-account-ids-list
                              #:organization-affected-entities-error-item
                              #:organization-entity-account-filters-list
                              #:organization-entity-aggregate
                              #:organization-entity-aggregates-list
                              #:organization-entity-filters-list
                              #:organization-event
                              #:organization-event-arns-list
                              #:organization-event-detail-filters-list
                              #:organization-event-details
                              #:organization-event-details-error-item
                              #:organization-event-filter
                              #:organization-event-list #:unsupported-locale
                              #:account-id #:affected-accounts-list
                              #:aggregate-value #:availability-zone
                              #:availability-zones #:aws-account-ids-list
                              #:count #:date-time-range-list #:entity-arn
                              #:entity-arn-list #:entity-metadata
                              #:entity-metadata-key #:entity-metadata-value
                              #:entity-status-code #:entity-status-code-list
                              #:entity-statuses #:entity-url #:entity-value
                              #:entity-value-list #:event-aggregate-field
                              #:event-arn #:event-arn-list #:event-metadata
                              #:event-scope-code #:event-status-code
                              #:event-status-code-list #:event-type-category
                              #:event-type-category-list2 #:event-type-code
                              #:event-type-list2
                              #:health-service-access-status-for-organization
                              #:locale #:max-results #:max-results-lower-range
                              #:metadata-key #:metadata-value #:next-token
                              #:region #:region-list #:service #:service-list
                              #:string #:tag-filter #:tag-key #:tag-set
                              #:tag-value #:timestamp))
(common-lisp:in-package #:pira/health)

(smithy/sdk/service:define-service awshealth-20160804 :shape-name
                                   "AWSHealth_20160804" :version "2016-08-04"
                                   :title "AWS Health APIs and Notifications"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Health")
                                      ("arnNamespace" . "health")
                                      ("cloudFormationName" . "Health")
                                      ("cloudTrailEventSource"
                                       . "health.amazonaws.com")
                                      ("endpointPrefix" . "health"))
                                     ("aws.auth#sigv4" ("name" . "health"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure account-entity-aggregate common-lisp:nil
                                    ((account-id :target-type event-arn
                                      :member-name "accountId")
                                     (count :target-type count :member-name
                                      "count")
                                     (statuses :target-type entity-statuses
                                      :member-name "statuses"))
                                    (:shape-name "AccountEntityAggregate"))

(smithy/sdk/shapes:define-list account-entity-aggregates-list :member
                               account-entity-aggregate)

(smithy/sdk/shapes:define-structure affected-entity common-lisp:nil
                                    ((entity-arn :target-type entity-arn
                                      :member-name "entityArn")
                                     (event-arn :target-type event-arn
                                      :member-name "eventArn")
                                     (entity-value :target-type entity-value
                                      :member-name "entityValue")
                                     (entity-url :target-type entity-url
                                      :member-name "entityUrl")
                                     (aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime")
                                     (status-code :target-type
                                      entity-status-code :member-name
                                      "statusCode")
                                     (tags :target-type tag-set :member-name
                                      "tags")
                                     (entity-metadata :target-type
                                      entity-metadata :member-name
                                      "entityMetadata"))
                                    (:shape-name "AffectedEntity"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure date-time-range common-lisp:nil
                                    ((from :target-type timestamp :member-name
                                      "from")
                                     (to :target-type timestamp :member-name
                                      "to"))
                                    (:shape-name "DateTimeRange"))

(smithy/sdk/shapes:define-input
 describe-affected-accounts-for-organization-request common-lisp:nil
 ((event-arn :target-type event-arn :required common-lisp:t :member-name
   "eventArn")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "DescribeAffectedAccountsForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 describe-affected-accounts-for-organization-response common-lisp:nil
 ((affected-accounts :target-type affected-accounts-list :member-name
   "affectedAccounts")
  (event-scope-code :target-type event-scope-code :member-name
   "eventScopeCode")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "DescribeAffectedAccountsForOrganizationResponse"))

(smithy/sdk/shapes:define-list
 describe-affected-entities-for-organization-failed-set :member
 organization-affected-entities-error-item)

(smithy/sdk/shapes:define-input
 describe-affected-entities-for-organization-request common-lisp:nil
 ((organization-entity-filters :target-type organization-entity-filters-list
   :member-name "organizationEntityFilters")
  (locale :target-type locale :member-name "locale")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results-lower-range :member-name "maxResults")
  (organization-entity-account-filters :target-type
   organization-entity-account-filters-list :member-name
   "organizationEntityAccountFilters"))
 (:shape-name "DescribeAffectedEntitiesForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 describe-affected-entities-for-organization-response common-lisp:nil
 ((entities :target-type entity-list :member-name "entities")
  (failed-set :target-type
   describe-affected-entities-for-organization-failed-set :member-name
   "failedSet")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "DescribeAffectedEntitiesForOrganizationResponse"))

(smithy/sdk/shapes:define-input describe-affected-entities-request
                                common-lisp:nil
                                ((filter :target-type entity-filter :required
                                  common-lisp:t :member-name "filter")
                                 (locale :target-type locale :member-name
                                  "locale")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeAffectedEntitiesRequest"))

(smithy/sdk/shapes:define-output describe-affected-entities-response
                                 common-lisp:nil
                                 ((entities :target-type entity-list
                                   :member-name "entities")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeAffectedEntitiesResponse"))

(smithy/sdk/shapes:define-input
 describe-entity-aggregates-for-organization-request common-lisp:nil
 ((event-arns :target-type organization-event-arns-list :required common-lisp:t
   :member-name "eventArns")
  (aws-account-ids :target-type organization-account-ids-list :member-name
   "awsAccountIds"))
 (:shape-name "DescribeEntityAggregatesForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 describe-entity-aggregates-for-organization-response common-lisp:nil
 ((organization-entity-aggregates :target-type
   organization-entity-aggregates-list :member-name
   "organizationEntityAggregates"))
 (:shape-name "DescribeEntityAggregatesForOrganizationResponse"))

(smithy/sdk/shapes:define-input describe-entity-aggregates-request
                                common-lisp:nil
                                ((event-arns :target-type event-arns-list
                                  :member-name "eventArns"))
                                (:shape-name "DescribeEntityAggregatesRequest"))

(smithy/sdk/shapes:define-output describe-entity-aggregates-response
                                 common-lisp:nil
                                 ((entity-aggregates :target-type
                                   entity-aggregate-list :member-name
                                   "entityAggregates"))
                                 (:shape-name
                                  "DescribeEntityAggregatesResponse"))

(smithy/sdk/shapes:define-input describe-event-aggregates-request
                                common-lisp:nil
                                ((filter :target-type event-filter :member-name
                                  "filter")
                                 (aggregate-field :target-type
                                  event-aggregate-field :required common-lisp:t
                                  :member-name "aggregateField")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeEventAggregatesRequest"))

(smithy/sdk/shapes:define-output describe-event-aggregates-response
                                 common-lisp:nil
                                 ((event-aggregates :target-type
                                   event-aggregate-list :member-name
                                   "eventAggregates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeEventAggregatesResponse"))

(smithy/sdk/shapes:define-list describe-event-details-failed-set :member
                               event-details-error-item)

(smithy/sdk/shapes:define-list
 describe-event-details-for-organization-failed-set :member
 organization-event-details-error-item)

(smithy/sdk/shapes:define-input describe-event-details-for-organization-request
                                common-lisp:nil
                                ((organization-event-detail-filters
                                  :target-type
                                  organization-event-detail-filters-list
                                  :required common-lisp:t :member-name
                                  "organizationEventDetailFilters")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name
                                 "DescribeEventDetailsForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 describe-event-details-for-organization-response common-lisp:nil
 ((successful-set :target-type
   describe-event-details-for-organization-successful-set :member-name
   "successfulSet")
  (failed-set :target-type describe-event-details-for-organization-failed-set
   :member-name "failedSet"))
 (:shape-name "DescribeEventDetailsForOrganizationResponse"))

(smithy/sdk/shapes:define-list
 describe-event-details-for-organization-successful-set :member
 organization-event-details)

(smithy/sdk/shapes:define-input describe-event-details-request common-lisp:nil
                                ((event-arns :target-type event-arn-list
                                  :required common-lisp:t :member-name
                                  "eventArns")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name "DescribeEventDetailsRequest"))

(smithy/sdk/shapes:define-output describe-event-details-response
                                 common-lisp:nil
                                 ((successful-set :target-type
                                   describe-event-details-successful-set
                                   :member-name "successfulSet")
                                  (failed-set :target-type
                                   describe-event-details-failed-set
                                   :member-name "failedSet"))
                                 (:shape-name "DescribeEventDetailsResponse"))

(smithy/sdk/shapes:define-list describe-event-details-successful-set :member
                               event-details)

(smithy/sdk/shapes:define-input describe-event-types-request common-lisp:nil
                                ((filter :target-type event-type-filter
                                  :member-name "filter")
                                 (locale :target-type locale :member-name
                                  "locale")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeEventTypesRequest"))

(smithy/sdk/shapes:define-output describe-event-types-response common-lisp:nil
                                 ((event-types :target-type event-type-list
                                   :member-name "eventTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeEventTypesResponse"))

(smithy/sdk/shapes:define-input describe-events-for-organization-request
                                common-lisp:nil
                                ((filter :target-type organization-event-filter
                                  :member-name "filter")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-results-lower-range :member-name
                                  "maxResults")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name
                                 "DescribeEventsForOrganizationRequest"))

(smithy/sdk/shapes:define-output describe-events-for-organization-response
                                 common-lisp:nil
                                 ((events :target-type organization-event-list
                                   :member-name "events")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeEventsForOrganizationResponse"))

(smithy/sdk/shapes:define-input describe-events-request common-lisp:nil
                                ((filter :target-type event-filter :member-name
                                  "filter")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name "DescribeEventsRequest"))

(smithy/sdk/shapes:define-output describe-events-response common-lisp:nil
                                 ((events :target-type event-list :member-name
                                   "events")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeEventsResponse"))

(smithy/sdk/shapes:define-output
 describe-health-service-status-for-organization-response common-lisp:nil
 ((health-service-access-status-for-organization :target-type
   health-service-access-status-for-organization :member-name
   "healthServiceAccessStatusForOrganization"))
 (:shape-name "DescribeHealthServiceStatusForOrganizationResponse"))

(smithy/sdk/shapes:define-structure entity-account-filter common-lisp:nil
                                    ((event-arn :target-type event-arn
                                      :required common-lisp:t :member-name
                                      "eventArn")
                                     (aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (status-codes :target-type
                                      entity-status-code-list :member-name
                                      "statusCodes"))
                                    (:shape-name "EntityAccountFilter"))

(smithy/sdk/shapes:define-structure entity-aggregate common-lisp:nil
                                    ((event-arn :target-type event-arn
                                      :member-name "eventArn")
                                     (count :target-type count :member-name
                                      "count")
                                     (statuses :target-type entity-statuses
                                      :member-name "statuses"))
                                    (:shape-name "EntityAggregate"))

(smithy/sdk/shapes:define-list entity-aggregate-list :member entity-aggregate)

(smithy/sdk/shapes:define-structure entity-filter common-lisp:nil
                                    ((event-arns :target-type event-arn-list
                                      :required common-lisp:t :member-name
                                      "eventArns")
                                     (entity-arns :target-type entity-arn-list
                                      :member-name "entityArns")
                                     (entity-values :target-type
                                      entity-value-list :member-name
                                      "entityValues")
                                     (last-updated-times :target-type
                                      date-time-range-list :member-name
                                      "lastUpdatedTimes")
                                     (tags :target-type tag-filter :member-name
                                      "tags")
                                     (status-codes :target-type
                                      entity-status-code-list :member-name
                                      "statusCodes"))
                                    (:shape-name "EntityFilter"))

(smithy/sdk/shapes:define-list entity-list :member affected-entity)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((arn :target-type event-arn :member-name
                                      "arn")
                                     (service :target-type service :member-name
                                      "service")
                                     (event-type-code :target-type
                                      event-type-code :member-name
                                      "eventTypeCode")
                                     (event-type-category :target-type
                                      event-type-category :member-name
                                      "eventTypeCategory")
                                     (region :target-type region :member-name
                                      "region")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "availabilityZone")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime")
                                     (status-code :target-type
                                      event-status-code :member-name
                                      "statusCode")
                                     (event-scope-code :target-type
                                      event-scope-code :member-name
                                      "eventScopeCode"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-structure event-account-filter common-lisp:nil
                                    ((event-arn :target-type event-arn
                                      :required common-lisp:t :member-name
                                      "eventArn")
                                     (aws-account-id :target-type account-id
                                      :member-name "awsAccountId"))
                                    (:shape-name "EventAccountFilter"))

(smithy/sdk/shapes:define-structure event-aggregate common-lisp:nil
                                    ((aggregate-value :target-type
                                      aggregate-value :member-name
                                      "aggregateValue")
                                     (count :target-type count :member-name
                                      "count"))
                                    (:shape-name "EventAggregate"))

(smithy/sdk/shapes:define-list event-aggregate-list :member event-aggregate)

(smithy/sdk/shapes:define-list event-arns-list :member event-arn)

(smithy/sdk/shapes:define-structure event-description common-lisp:nil
                                    ((latest-description :target-type
                                      event-description2 :member-name
                                      "latestDescription"))
                                    (:shape-name "EventDescription"))

(smithy/sdk/shapes:define-type event-description2
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-details common-lisp:nil
                                    ((event :target-type event :member-name
                                      "event")
                                     (event-description :target-type
                                      event-description :member-name
                                      "eventDescription")
                                     (event-metadata :target-type
                                      event-metadata :member-name
                                      "eventMetadata"))
                                    (:shape-name "EventDetails"))

(smithy/sdk/shapes:define-structure event-details-error-item common-lisp:nil
                                    ((event-arn :target-type event-arn
                                      :member-name "eventArn")
                                     (error-name :target-type string
                                      :member-name "errorName")
                                     (error-message :target-type string
                                      :member-name "errorMessage"))
                                    (:shape-name "EventDetailsErrorItem"))

(smithy/sdk/shapes:define-structure event-filter common-lisp:nil
                                    ((event-arns :target-type event-arn-list
                                      :member-name "eventArns")
                                     (event-type-codes :target-type
                                      event-type-list2 :member-name
                                      "eventTypeCodes")
                                     (services :target-type service-list
                                      :member-name "services")
                                     (regions :target-type region-list
                                      :member-name "regions")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "availabilityZones")
                                     (start-times :target-type
                                      date-time-range-list :member-name
                                      "startTimes")
                                     (end-times :target-type
                                      date-time-range-list :member-name
                                      "endTimes")
                                     (last-updated-times :target-type
                                      date-time-range-list :member-name
                                      "lastUpdatedTimes")
                                     (entity-arns :target-type entity-arn-list
                                      :member-name "entityArns")
                                     (entity-values :target-type
                                      entity-value-list :member-name
                                      "entityValues")
                                     (event-type-categories :target-type
                                      event-type-category-list2 :member-name
                                      "eventTypeCategories")
                                     (tags :target-type tag-filter :member-name
                                      "tags")
                                     (event-status-codes :target-type
                                      event-status-code-list :member-name
                                      "eventStatusCodes"))
                                    (:shape-name "EventFilter"))

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-structure event-type common-lisp:nil
                                    ((service :target-type service :member-name
                                      "service")
                                     (code :target-type event-type-code
                                      :member-name "code")
                                     (category :target-type event-type-category
                                      :member-name "category"))
                                    (:shape-name "EventType"))

(smithy/sdk/shapes:define-type event-type2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-type-category-list :member
                               event-type-category)

(smithy/sdk/shapes:define-list event-type-code-list :member event-type-code)

(smithy/sdk/shapes:define-structure event-type-filter common-lisp:nil
                                    ((event-type-codes :target-type
                                      event-type-code-list :member-name
                                      "eventTypeCodes")
                                     (services :target-type service-list
                                      :member-name "services")
                                     (event-type-categories :target-type
                                      event-type-category-list :member-name
                                      "eventTypeCategories"))
                                    (:shape-name "EventTypeFilter"))

(smithy/sdk/shapes:define-list event-type-list :member event-type)

(smithy/sdk/shapes:define-error invalid-pagination-token common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidPaginationToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-list organization-account-ids-list :member account-id)

(smithy/sdk/shapes:define-structure organization-affected-entities-error-item
                                    common-lisp:nil
                                    ((aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (event-arn :target-type event-arn
                                      :member-name "eventArn")
                                     (error-name :target-type string
                                      :member-name "errorName")
                                     (error-message :target-type string
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "OrganizationAffectedEntitiesErrorItem"))

(smithy/sdk/shapes:define-list organization-entity-account-filters-list :member
                               entity-account-filter)

(smithy/sdk/shapes:define-structure organization-entity-aggregate
                                    common-lisp:nil
                                    ((event-arn :target-type event-arn
                                      :member-name "eventArn")
                                     (count :target-type count :member-name
                                      "count")
                                     (statuses :target-type entity-statuses
                                      :member-name "statuses")
                                     (accounts :target-type
                                      account-entity-aggregates-list
                                      :member-name "accounts"))
                                    (:shape-name "OrganizationEntityAggregate"))

(smithy/sdk/shapes:define-list organization-entity-aggregates-list :member
                               organization-entity-aggregate)

(smithy/sdk/shapes:define-list organization-entity-filters-list :member
                               event-account-filter)

(smithy/sdk/shapes:define-structure organization-event common-lisp:nil
                                    ((arn :target-type event-arn :member-name
                                      "arn")
                                     (service :target-type service :member-name
                                      "service")
                                     (event-type-code :target-type
                                      event-type-code :member-name
                                      "eventTypeCode")
                                     (event-type-category :target-type
                                      event-type-category :member-name
                                      "eventTypeCategory")
                                     (event-scope-code :target-type
                                      event-scope-code :member-name
                                      "eventScopeCode")
                                     (region :target-type region :member-name
                                      "region")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime")
                                     (status-code :target-type
                                      event-status-code :member-name
                                      "statusCode"))
                                    (:shape-name "OrganizationEvent"))

(smithy/sdk/shapes:define-list organization-event-arns-list :member event-arn)

(smithy/sdk/shapes:define-list organization-event-detail-filters-list :member
                               event-account-filter)

(smithy/sdk/shapes:define-structure organization-event-details common-lisp:nil
                                    ((aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (event :target-type event :member-name
                                      "event")
                                     (event-description :target-type
                                      event-description :member-name
                                      "eventDescription")
                                     (event-metadata :target-type
                                      event-metadata :member-name
                                      "eventMetadata"))
                                    (:shape-name "OrganizationEventDetails"))

(smithy/sdk/shapes:define-structure organization-event-details-error-item
                                    common-lisp:nil
                                    ((aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (event-arn :target-type event-arn
                                      :member-name "eventArn")
                                     (error-name :target-type string
                                      :member-name "errorName")
                                     (error-message :target-type string
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "OrganizationEventDetailsErrorItem"))

(smithy/sdk/shapes:define-structure organization-event-filter common-lisp:nil
                                    ((event-type-codes :target-type
                                      event-type-list2 :member-name
                                      "eventTypeCodes")
                                     (aws-account-ids :target-type
                                      aws-account-ids-list :member-name
                                      "awsAccountIds")
                                     (services :target-type service-list
                                      :member-name "services")
                                     (regions :target-type region-list
                                      :member-name "regions")
                                     (start-time :target-type date-time-range
                                      :member-name "startTime")
                                     (end-time :target-type date-time-range
                                      :member-name "endTime")
                                     (last-updated-time :target-type
                                      date-time-range :member-name
                                      "lastUpdatedTime")
                                     (entity-arns :target-type entity-arn-list
                                      :member-name "entityArns")
                                     (entity-values :target-type
                                      entity-value-list :member-name
                                      "entityValues")
                                     (event-type-categories :target-type
                                      event-type-category-list2 :member-name
                                      "eventTypeCategories")
                                     (event-status-codes :target-type
                                      event-status-code-list :member-name
                                      "eventStatusCodes"))
                                    (:shape-name "OrganizationEventFilter"))

(smithy/sdk/shapes:define-list organization-event-list :member
                               organization-event)

(smithy/sdk/shapes:define-error unsupported-locale common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnsupportedLocale")
                                (:error-code 400))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list affected-accounts-list :member account-id)

(smithy/sdk/shapes:define-type aggregate-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zones :member availability-zone)

(smithy/sdk/shapes:define-list aws-account-ids-list :member account-id)

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list date-time-range-list :member date-time-range)

(smithy/sdk/shapes:define-type entity-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-arn-list :member entity-arn)

(smithy/sdk/shapes:define-map entity-metadata :key entity-metadata-key :value
                              entity-metadata-value)

(smithy/sdk/shapes:define-type entity-metadata-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-metadata-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum entity-status-code
    common-lisp:nil
  (:impaired "IMPAIRED")
  (:unimpaired "UNIMPAIRED")
  (:unknown "UNKNOWN")
  (:pending "PENDING")
  (:resolved "RESOLVED"))

(smithy/sdk/shapes:define-list entity-status-code-list :member
                               entity-status-code)

(smithy/sdk/shapes:define-map entity-statuses :key entity-status-code :value
                              count)

(smithy/sdk/shapes:define-type entity-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-value-list :member entity-value)

(smithy/sdk/shapes:define-enum event-aggregate-field
    common-lisp:nil
  (:event-type-category "eventTypeCategory"))

(smithy/sdk/shapes:define-type event-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-arn-list :member event-arn)

(smithy/sdk/shapes:define-map event-metadata :key metadata-key :value
                              metadata-value)

(smithy/sdk/shapes:define-enum event-scope-code
    common-lisp:nil
  (:public "PUBLIC")
  (:account-specific "ACCOUNT_SPECIFIC")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum event-status-code
    common-lisp:nil
  (:open "open")
  (:closed "closed")
  (:upcoming "upcoming"))

(smithy/sdk/shapes:define-list event-status-code-list :member event-status-code)

(smithy/sdk/shapes:define-enum event-type-category
    common-lisp:nil
  (:issue "issue")
  (:account-notification "accountNotification")
  (:scheduled-change "scheduledChange")
  (:investigation "investigation"))

(smithy/sdk/shapes:define-list event-type-category-list2 :member
                               event-type-category)

(smithy/sdk/shapes:define-type event-type-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-type-list2 :member event-type2)

(smithy/sdk/shapes:define-type health-service-access-status-for-organization
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type locale smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-lower-range
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metadata-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-type service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-list :member service)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-filter :member tag-set)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tag-set :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation
 describe-affected-accounts-for-organization :shape-name
 "DescribeAffectedAccountsForOrganization" :input
 describe-affected-accounts-for-organization-request :output
 describe-affected-accounts-for-organization-response :errors
 (invalid-pagination-token))

(smithy/sdk/operation:define-operation describe-affected-entities :shape-name
                                       "DescribeAffectedEntities" :input
                                       describe-affected-entities-request
                                       :output
                                       describe-affected-entities-response
                                       :errors
                                       (invalid-pagination-token
                                        unsupported-locale))

(smithy/sdk/operation:define-operation
 describe-affected-entities-for-organization :shape-name
 "DescribeAffectedEntitiesForOrganization" :input
 describe-affected-entities-for-organization-request :output
 describe-affected-entities-for-organization-response :errors
 (invalid-pagination-token unsupported-locale))

(smithy/sdk/operation:define-operation describe-entity-aggregates :shape-name
                                       "DescribeEntityAggregates" :input
                                       describe-entity-aggregates-request
                                       :output
                                       describe-entity-aggregates-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation
 describe-entity-aggregates-for-organization :shape-name
 "DescribeEntityAggregatesForOrganization" :input
 describe-entity-aggregates-for-organization-request :output
 describe-entity-aggregates-for-organization-response :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-event-aggregates :shape-name
                                       "DescribeEventAggregates" :input
                                       describe-event-aggregates-request
                                       :output
                                       describe-event-aggregates-response
                                       :errors (invalid-pagination-token))

(smithy/sdk/operation:define-operation describe-event-details :shape-name
                                       "DescribeEventDetails" :input
                                       describe-event-details-request :output
                                       describe-event-details-response :errors
                                       (unsupported-locale))

(smithy/sdk/operation:define-operation describe-event-details-for-organization
                                       :shape-name
                                       "DescribeEventDetailsForOrganization"
                                       :input
                                       describe-event-details-for-organization-request
                                       :output
                                       describe-event-details-for-organization-response
                                       :errors (unsupported-locale))

(smithy/sdk/operation:define-operation describe-event-types :shape-name
                                       "DescribeEventTypes" :input
                                       describe-event-types-request :output
                                       describe-event-types-response :errors
                                       (invalid-pagination-token
                                        unsupported-locale))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-request :output
                                       describe-events-response :errors
                                       (invalid-pagination-token
                                        unsupported-locale))

(smithy/sdk/operation:define-operation describe-events-for-organization
                                       :shape-name
                                       "DescribeEventsForOrganization" :input
                                       describe-events-for-organization-request
                                       :output
                                       describe-events-for-organization-response
                                       :errors
                                       (invalid-pagination-token
                                        unsupported-locale))

(smithy/sdk/operation:define-operation
 describe-health-service-status-for-organization :shape-name
 "DescribeHealthServiceStatusForOrganization" :input common-lisp:null :output
 describe-health-service-status-for-organization-response :errors
 common-lisp:nil)

(smithy/sdk/operation:define-operation
 disable-health-service-access-for-organization :shape-name
 "DisableHealthServiceAccessForOrganization" :input common-lisp:null :output
 common-lisp:null :errors (concurrent-modification-exception))

(smithy/sdk/operation:define-operation
 enable-health-service-access-for-organization :shape-name
 "EnableHealthServiceAccessForOrganization" :input common-lisp:null :output
 common-lisp:null :errors (concurrent-modification-exception))
