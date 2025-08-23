(uiop/package:define-package #:pira/partnercentral-selling (:use)
                             (:export #:awspartner-central-selling
                              #:accept-engagement-invitation #:account
                              #:account-receiver #:account-summary #:address
                              #:address-part #:address-summary #:alias
                              #:apn-programs #:assign-opportunity
                              #:assignee-contact #:associate-opportunity
                              #:aws-account #:aws-account-id-or-alias-list
                              #:aws-account-list #:aws-closed-lost-reason
                              #:aws-funding-used
                              #:aws-marketplace-offer-identifier
                              #:aws-marketplace-offer-identifiers
                              #:aws-member-business-title
                              #:aws-opportunity-customer
                              #:aws-opportunity-insights
                              #:aws-opportunity-life-cycle
                              #:aws-opportunity-project
                              #:aws-opportunity-related-entities
                              #:aws-opportunity-stage
                              #:aws-opportunity-team-members-list
                              #:aws-product-identifier
                              #:aws-product-identifiers #:aws-submission
                              #:aws-team-member #:catalog-identifier #:channel
                              #:channels #:client-token #:closed-lost-reason
                              #:company-name #:company-website-url
                              #:competitor-name #:contact #:country-code
                              #:create-engagement
                              #:create-engagement-invitation
                              #:create-opportunity #:create-resource-snapshot
                              #:create-resource-snapshot-job #:currency-code
                              #:customer #:customer-contacts-list
                              #:customer-projects-context #:customer-summary
                              #:date #:date-time #:delete-resource-snapshot-job
                              #:delivery-model #:delivery-models
                              #:disassociate-opportunity #:duns-number #:email
                              #:engagement #:engagement-arn
                              #:engagement-arn-or-identifier
                              #:engagement-by-accepting-invitation-task
                              #:engagement-context-details
                              #:engagement-context-payload
                              #:engagement-context-type #:engagement-contexts
                              #:engagement-customer
                              #:engagement-customer-business-problem
                              #:engagement-customer-project-details
                              #:engagement-customer-project-title
                              #:engagement-description
                              #:engagement-from-opportunity-task
                              #:engagement-identifier #:engagement-identifiers
                              #:engagement-invitation
                              #:engagement-invitation-arn
                              #:engagement-invitation-arn-or-identifier
                              #:engagement-invitation-identifier
                              #:engagement-invitation-identifiers
                              #:engagement-invitation-payload-type
                              #:engagement-invitation-summaries
                              #:engagement-invitation-summary
                              #:engagement-invitations-payload-type
                              #:engagement-member #:engagement-member-summaries
                              #:engagement-member-summary #:engagement-members
                              #:engagement-page-size
                              #:engagement-resource-association-summary
                              #:engagement-resource-association-summary-list
                              #:engagement-score #:engagement-sort
                              #:engagement-sort-name #:engagement-summary
                              #:engagement-summary-list #:engagement-title
                              #:expected-customer-spend
                              #:expected-customer-spend-list
                              #:filter-identifier
                              #:filter-life-cycle-review-status
                              #:filter-life-cycle-stage #:filter-status
                              #:get-aws-opportunity-summary #:get-engagement
                              #:get-engagement-invitation #:get-opportunity
                              #:get-resource-snapshot
                              #:get-resource-snapshot-job
                              #:get-selling-system-settings #:industry
                              #:invitation #:invitation-message
                              #:invitation-status #:invitation-status-list
                              #:involvement-type-change-reason #:job-title
                              #:last-modified-date #:life-cycle
                              #:life-cycle-for-view #:life-cycle-summary
                              #:list-engagement-by-accepting-invitation-task-summaries
                              #:list-engagement-by-accepting-invitation-task-summary
                              #:list-engagement-by-accepting-invitation-tasks
                              #:list-engagement-from-opportunity-task-summaries
                              #:list-engagement-from-opportunity-task-summary
                              #:list-engagement-from-opportunity-tasks
                              #:list-engagement-invitations
                              #:list-engagement-members
                              #:list-engagement-resource-associations
                              #:list-engagements #:list-opportunities
                              #:list-resource-snapshot-jobs
                              #:list-resource-snapshots #:list-solutions
                              #:list-tags-for-resource #:list-tasks-sort-base
                              #:list-tasks-sort-name #:marketing
                              #:marketing-source #:member-company-name
                              #:member-page-size #:monetary-value #:name
                              #:national-security #:next-steps-histories
                              #:next-steps-history #:opportunity
                              #:opportunity-arn
                              #:opportunity-engagement-invitation-sort
                              #:opportunity-engagement-invitation-sort-name
                              #:opportunity-identifier
                              #:opportunity-identifiers
                              #:opportunity-invitation-payload
                              #:opportunity-origin #:opportunity-sort
                              #:opportunity-sort-name #:opportunity-summaries
                              #:opportunity-summary #:opportunity-summary-view
                              #:opportunity-type #:page-size #:participant-type
                              #:partner-opportunity-team-members-list #:payload
                              #:payment-frequency #:phone-number #:pii-string
                              #:primary-need-from-aws #:primary-needs-from-aws
                              #:profile-next-steps-histories
                              #:profile-next-steps-history #:project
                              #:project-details #:project-summary
                              #:project-view #:put-selling-system-settings
                              #:reason-code #:receiver
                              #:receiver-responsibility
                              #:receiver-responsibility-list
                              #:reject-engagement-invitation
                              #:rejection-reason-string
                              #:related-entity-identifiers
                              #:related-entity-type #:resource-arn
                              #:resource-identifier #:resource-snapshot
                              #:resource-snapshot-arn #:resource-snapshot-job
                              #:resource-snapshot-job-arn
                              #:resource-snapshot-job-identifier
                              #:resource-snapshot-job-role-arn
                              #:resource-snapshot-job-role-identifier
                              #:resource-snapshot-job-status
                              #:resource-snapshot-job-summary
                              #:resource-snapshot-job-summary-list
                              #:resource-snapshot-payload
                              #:resource-snapshot-revision
                              #:resource-snapshot-summary
                              #:resource-snapshot-summary-list
                              #:resource-template-name #:resource-type
                              #:revenue-model #:review-status
                              #:sales-activities #:sales-activity
                              #:sales-involvement-type #:sender-contact
                              #:sender-contact-email #:sender-contact-list
                              #:software-revenue #:solution #:solution-arn
                              #:solution-base #:solution-identifier
                              #:solution-identifiers #:solution-list
                              #:solution-sort #:solution-sort-name
                              #:solution-status #:sort-by #:sort-object
                              #:sort-order #:stage
                              #:start-engagement-by-accepting-invitation-task
                              #:start-engagement-from-opportunity-task
                              #:start-resource-snapshot-job
                              #:stop-resource-snapshot-job #:string-list
                              #:submit-opportunity #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:taggable-resource-arn #:task-arn
                              #:task-arn-or-identifier #:task-identifier
                              #:task-identifiers #:task-status #:task-statuses
                              #:untag-resource #:update-opportunity #:use-cases
                              #:validation-exception-error
                              #:validation-exception-error-code
                              #:validation-exception-error-list
                              #:validation-exception-reason #:visibility
                              #:website-url))
(common-lisp:in-package #:pira/partnercentral-selling)

(smithy/sdk/service:define-service awspartner-central-selling :shape-name
                                   "AWSPartnerCentralSelling" :version
                                   "2022-07-26" :title
                                   "Partner Central Selling API" :operations
                                   '(get-selling-system-settings
                                     list-tags-for-resource
                                     put-selling-system-settings tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "PartnerCentral Selling")
                                      ("endpointPrefix"
                                       . "partnercentral-selling")
                                      ("arnNamespace" . "partnercentral")
                                      ("cloudTrailEventSource"
                                       . "partnercentral-selling.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "partnercentral-selling"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#defineConditionKeys"
                                      ("partnercentral:RelatedEntityType"
                                       ("type" . "String")
                                       ("relativeDocumentation"
                                        . "page.html#RelatedEntityType")
                                       ("documentation"
                                        . "Filters access by entity types for Opportunity association. Accepted values: [Solutions, AwsProducts, AwsMarketplaceOffers]"))
                                      ("partnercentral:Catalog"
                                       ("type" . "String")
                                       ("relativeDocumentation"
                                        . "page.html#Catalog")
                                       ("documentation"
                                        . "Filters access by a specific Catalog. Accepted values: [AWS, Sandbox]"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-input accept-engagement-invitation-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  engagement-invitation-arn-or-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier"))
                                (:shape-name
                                 "AcceptEngagementInvitationRequest"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((industry :target-type industry
                                      :member-name "Industry")
                                     (other-industry :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OtherIndustry")
                                     (company-name :target-type name :required
                                      common-lisp:t :member-name "CompanyName")
                                     (website-url :target-type website-url
                                      :member-name "WebsiteUrl")
                                     (aws-account-id :target-type aws-account
                                      :member-name "AwsAccountId")
                                     (address :target-type address :member-name
                                      "Address")
                                     (duns :target-type duns-number
                                      :member-name "Duns"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-structure account-receiver common-lisp:nil
                                    ((alias :target-type alias :member-name
                                      "Alias")
                                     (aws-account-id :target-type aws-account
                                      :required common-lisp:t :member-name
                                      "AwsAccountId"))
                                    (:shape-name "AccountReceiver"))

(smithy/sdk/shapes:define-structure account-summary common-lisp:nil
                                    ((industry :target-type industry
                                      :member-name "Industry")
                                     (other-industry :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OtherIndustry")
                                     (company-name :target-type name :required
                                      common-lisp:t :member-name "CompanyName")
                                     (website-url :target-type website-url
                                      :member-name "WebsiteUrl")
                                     (address :target-type address-summary
                                      :member-name "Address"))
                                    (:shape-name "AccountSummary"))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((city :target-type address-part
                                      :member-name "City")
                                     (postal-code :target-type address-part
                                      :member-name "PostalCode")
                                     (state-or-region :target-type address-part
                                      :member-name "StateOrRegion")
                                     (country-code :target-type country-code
                                      :member-name "CountryCode")
                                     (street-address :target-type address-part
                                      :member-name "StreetAddress"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type address-part smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure address-summary common-lisp:nil
                                    ((city :target-type address-part
                                      :member-name "City")
                                     (postal-code :target-type address-part
                                      :member-name "PostalCode")
                                     (state-or-region :target-type address-part
                                      :member-name "StateOrRegion")
                                     (country-code :target-type country-code
                                      :member-name "CountryCode"))
                                    (:shape-name "AddressSummary"))

(smithy/sdk/shapes:define-type alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list apn-programs :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input assign-opportunity-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name "Identifier")
                                 (assignee :target-type assignee-contact
                                  :required common-lisp:t :member-name
                                  "Assignee"))
                                (:shape-name "AssignOpportunityRequest"))

(smithy/sdk/shapes:define-structure assignee-contact common-lisp:nil
                                    ((email :target-type email :required
                                      common-lisp:t :member-name "Email")
                                     (first-name :target-type name :required
                                      common-lisp:t :member-name "FirstName")
                                     (last-name :target-type name :required
                                      common-lisp:t :member-name "LastName")
                                     (business-title :target-type job-title
                                      :required common-lisp:t :member-name
                                      "BusinessTitle"))
                                    (:shape-name "AssigneeContact"))

(smithy/sdk/shapes:define-input associate-opportunity-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (opportunity-identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name
                                  "OpportunityIdentifier")
                                 (related-entity-type :target-type
                                  related-entity-type :required common-lisp:t
                                  :member-name "RelatedEntityType")
                                 (related-entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RelatedEntityIdentifier"))
                                (:shape-name "AssociateOpportunityRequest"))

(smithy/sdk/shapes:define-type aws-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-account-id-or-alias-list :member aws-account)

(smithy/sdk/shapes:define-list aws-account-list :member aws-account)

(smithy/sdk/shapes:define-enum aws-closed-lost-reason
    common-lisp:nil
  (:administrative "Administrative")
  (:business-associate-agreement "Business Associate Agreement")
  (:company-acquired-dissolved "Company Acquired/Dissolved")
  (:competitive-offering "Competitive Offering")
  (:customer-data-requirement "Customer Data Requirement")
  (:customer-deficiency "Customer Deficiency")
  (:customer-experience "Customer Experience")
  (:delay-cancellation-of-project "Delay / Cancellation of Project")
  (:duplicate "Duplicate")
  (:duplicate-opportunity "Duplicate Opportunity")
  (:executive-blocker "Executive Blocker")
  (:failed-vetting "Failed Vetting")
  (:feature-limitation "Feature Limitation")
  (:financial-commercial "Financial/Commercial")
  (:insufficient-amazon-value "Insufficient Amazon Value")
  (:insufficient-aws-value "Insufficient AWS Value")
  (:international-constraints "International Constraints")
  (:legal-tax-regulatory "Legal / Tax / Regulatory")
  (:legal-terms-and-conditions "Legal Terms and Conditions")
  (:lost-to-competitor "Lost to Competitor")
  (:lost-to-competitor-google "Lost to Competitor - Google")
  (:lost-to-competitor-microsoft "Lost to Competitor - Microsoft")
  (:lost-to-competitor-other "Lost to Competitor - Other")
  (:lost-to-competitor-rackspace "Lost to Competitor - Rackspace")
  (:lost-to-competitor-softlayer "Lost to Competitor - SoftLayer")
  (:lost-to-competitor-vmware "Lost to Competitor - VMWare")
  (:no-customer-reference "No Customer Reference")
  (:no-integration-resources "No Integration Resources")
  (:no-opportunity "No Opportunity")
  (:no-perceived-value-of-mp "No Perceived Value of MP")
  (:no-response "No Response")
  (:not-committed-to-aws "Not Committed to AWS")
  (:no-update "No Update")
  (:on-premises-deployment "On Premises Deployment")
  (:other "Other")
  (:other-details-in-description "Other (Details in Description)")
  (:partner-gap "Partner Gap")
  (:past-due "Past Due")
  (:people-relationship-governance "People/Relationship/Governance")
  (:platform-technology-limitation "Platform Technology Limitation")
  (:preference-for-competitor "Preference for Competitor")
  (:price "Price")
  (:product-technology "Product/Technology")
  (:product-not-on-aws "Product Not on AWS")
  (:security-compliance "Security / Compliance")
  (:self-service "Self-Service")
  (:technical-limitations "Technical Limitations")
  (:term-sheet-impasse "Term Sheet Impasse"))

(smithy/sdk/shapes:define-enum aws-funding-used
    common-lisp:nil
  (:yes "Yes")
  (:no "No"))

(smithy/sdk/shapes:define-type aws-marketplace-offer-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-marketplace-offer-identifiers :member
                               aws-marketplace-offer-identifier)

(smithy/sdk/shapes:define-enum aws-member-business-title
    common-lisp:nil
  (:aws-sales-rep "AWSSalesRep")
  (:aws-account-owner "AWSAccountOwner")
  (:wwpspdm "WWPSPDM")
  (:pdm "PDM")
  (:psm "PSM")
  (:isvsm "ISVSM"))

(smithy/sdk/shapes:define-structure aws-opportunity-customer common-lisp:nil
                                    ((contacts :target-type
                                      customer-contacts-list :member-name
                                      "Contacts"))
                                    (:shape-name "AwsOpportunityCustomer"))

(smithy/sdk/shapes:define-structure aws-opportunity-insights common-lisp:nil
                                    ((next-best-actions :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextBestActions")
                                     (engagement-score :target-type
                                      engagement-score :member-name
                                      "EngagementScore"))
                                    (:shape-name "AwsOpportunityInsights"))

(smithy/sdk/shapes:define-structure aws-opportunity-life-cycle common-lisp:nil
                                    ((target-close-date :target-type date
                                      :member-name "TargetCloseDate")
                                     (closed-lost-reason :target-type
                                      aws-closed-lost-reason :member-name
                                      "ClosedLostReason")
                                     (stage :target-type aws-opportunity-stage
                                      :member-name "Stage")
                                     (next-steps :target-type pii-string
                                      :member-name "NextSteps")
                                     (next-steps-history :target-type
                                      profile-next-steps-histories :member-name
                                      "NextStepsHistory"))
                                    (:shape-name "AwsOpportunityLifeCycle"))

(smithy/sdk/shapes:define-structure aws-opportunity-project common-lisp:nil
                                    ((expected-customer-spend :target-type
                                      expected-customer-spend-list :member-name
                                      "ExpectedCustomerSpend"))
                                    (:shape-name "AwsOpportunityProject"))

(smithy/sdk/shapes:define-structure aws-opportunity-related-entities
                                    common-lisp:nil
                                    ((aws-products :target-type
                                      aws-product-identifiers :member-name
                                      "AwsProducts")
                                     (solutions :target-type
                                      solution-identifiers :member-name
                                      "Solutions"))
                                    (:shape-name
                                     "AwsOpportunityRelatedEntities"))

(smithy/sdk/shapes:define-enum aws-opportunity-stage
    common-lisp:nil
  (:not-started "Not Started")
  (:in-progress "In Progress")
  (:prospect "Prospect")
  (:engaged "Engaged")
  (:identified "Identified")
  (:qualify "Qualify")
  (:research "Research")
  (:seller-engaged "Seller Engaged")
  (:evaluating "Evaluating")
  (:seller-registered "Seller Registered")
  (:term-sheet-negotiation "Term Sheet Negotiation")
  (:contract-negotiation "Contract Negotiation")
  (:onboarding "Onboarding")
  (:building-integration "Building Integration")
  (:qualified "Qualified")
  (:on-hold "On-hold")
  (:technical-validation "Technical Validation")
  (:business-validation "Business Validation")
  (:committed "Committed")
  (:launched "Launched")
  (:deferred-to-partner "Deferred to Partner")
  (:closed-lost "Closed Lost")
  (:completed "Completed")
  (:closed-incomplete "Closed Incomplete"))

(smithy/sdk/shapes:define-list aws-opportunity-team-members-list :member
                               aws-team-member)

(smithy/sdk/shapes:define-type aws-product-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-product-identifiers :member
                               aws-product-identifier)

(smithy/sdk/shapes:define-structure aws-submission common-lisp:nil
                                    ((involvement-type :target-type
                                      sales-involvement-type :required
                                      common-lisp:t :member-name
                                      "InvolvementType")
                                     (visibility :target-type visibility
                                      :member-name "Visibility"))
                                    (:shape-name "AwsSubmission"))

(smithy/sdk/shapes:define-structure aws-team-member common-lisp:nil
                                    ((email :target-type email :member-name
                                      "Email")
                                     (first-name :target-type name :member-name
                                      "FirstName")
                                     (last-name :target-type name :member-name
                                      "LastName")
                                     (business-title :target-type
                                      aws-member-business-title :member-name
                                      "BusinessTitle"))
                                    (:shape-name "AwsTeamMember"))

(smithy/sdk/shapes:define-type catalog-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum channel
    common-lisp:nil
  (:aws-marketing-central "AWS Marketing Central")
  (:content-syndication "Content Syndication")
  (:display "Display")
  (:email "Email")
  (:live-event "Live Event")
  (:out-of-home "Out Of Home (OOH)")
  (:print "Print")
  (:search "Search")
  (:social "Social")
  (:telemarketing "Telemarketing")
  (:tv "TV")
  (:video "Video")
  (:virtual-event "Virtual Event"))

(smithy/sdk/shapes:define-list channels :member channel)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum closed-lost-reason
    common-lisp:nil
  (:customer-deficiency "Customer Deficiency")
  (:delay-cancellation-of-project "Delay / Cancellation of Project")
  (:legal-tax-regulatory "Legal / Tax / Regulatory")
  (:lost-to-competitor-google "Lost to Competitor - Google")
  (:lost-to-competitor-microsoft "Lost to Competitor - Microsoft")
  (:lost-to-competitor-softlayer "Lost to Competitor - SoftLayer")
  (:lost-to-competitor-vmware "Lost to Competitor - VMWare")
  (:lost-to-competitor-other "Lost to Competitor - Other")
  (:no-opportunity "No Opportunity")
  (:on-premises-deployment "On Premises Deployment")
  (:partner-gap "Partner Gap")
  (:price "Price")
  (:security-compliance "Security / Compliance")
  (:technical-limitations "Technical Limitations")
  (:customer-experience "Customer Experience")
  (:other "Other")
  (:peoplerelationshipgovernance "People/Relationship/Governance")
  (:producttechnology "Product/Technology")
  (:financialcommercial "Financial/Commercial"))

(smithy/sdk/shapes:define-type company-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type company-website-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum competitor-name
    common-lisp:nil
  (:oracle-cloud "Oracle Cloud")
  (:on-prem "On-Prem")
  (:co-location "Co-location")
  (:akamai "Akamai")
  (:alicloud "AliCloud")
  (:google-cloud-platform "Google Cloud Platform")
  (:ibm-softlayer "IBM Softlayer")
  (:microsoft-azure "Microsoft Azure")
  (:other-cost-optimization "Other- Cost Optimization")
  (:no-competition "No Competition")
  (:other "*Other"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure contact common-lisp:nil
                                    ((email :target-type email :member-name
                                      "Email")
                                     (first-name :target-type name :member-name
                                      "FirstName")
                                     (last-name :target-type name :member-name
                                      "LastName")
                                     (business-title :target-type job-title
                                      :member-name "BusinessTitle")
                                     (phone :target-type phone-number
                                      :member-name "Phone"))
                                    (:shape-name "Contact"))

(smithy/sdk/shapes:define-enum country-code
    common-lisp:nil
  (:us "US")
  (:af "AF")
  (:ax "AX")
  (:al "AL")
  (:dz "DZ")
  (:as "AS")
  (:ad "AD")
  (:ao "AO")
  (:ai "AI")
  (:aq "AQ")
  (:ag "AG")
  (:ar "AR")
  (:am "AM")
  (:aw "AW")
  (:au "AU")
  (:at "AT")
  (:az "AZ")
  (:bs "BS")
  (:bh "BH")
  (:bd "BD")
  (:bb "BB")
  (:by "BY")
  (:be "BE")
  (:bz "BZ")
  (:bj "BJ")
  (:bm "BM")
  (:bt "BT")
  (:bo "BO")
  (:bq "BQ")
  (:ba "BA")
  (:bw "BW")
  (:bv "BV")
  (:br "BR")
  (:io "IO")
  (:bn "BN")
  (:bg "BG")
  (:bf "BF")
  (:bi "BI")
  (:kh "KH")
  (:cm "CM")
  (:ca "CA")
  (:cv "CV")
  (:ky "KY")
  (:cf "CF")
  (:td "TD")
  (:cl "CL")
  (:cn "CN")
  (:cx "CX")
  (:cc "CC")
  (:co "CO")
  (:km "KM")
  (:cg "CG")
  (:ck "CK")
  (:cr "CR")
  (:ci "CI")
  (:hr "HR")
  (:cu "CU")
  (:cw "CW")
  (:cy "CY")
  (:cz "CZ")
  (:cd "CD")
  (:dk "DK")
  (:dj "DJ")
  (:dm "DM")
  (:do "DO")
  (:ec "EC")
  (:eg "EG")
  (:sv "SV")
  (:gq "GQ")
  (:er "ER")
  (:ee "EE")
  (:et "ET")
  (:fk "FK")
  (:fo "FO")
  (:fj "FJ")
  (:fi "FI")
  (:fr "FR")
  (:gf "GF")
  (:pf "PF")
  (:tf "TF")
  (:ga "GA")
  (:gm "GM")
  (:ge "GE")
  (:de "DE")
  (:gh "GH")
  (:gi "GI")
  (:gr "GR")
  (:gl "GL")
  (:gd "GD")
  (:gp "GP")
  (:gu "GU")
  (:gt "GT")
  (:gg "GG")
  (:gn "GN")
  (:gw "GW")
  (:gy "GY")
  (:ht "HT")
  (:hm "HM")
  (:va "VA")
  (:hn "HN")
  (:hk "HK")
  (:hu "HU")
  (:is "IS")
  (:in "IN")
  (:id "ID")
  (:ir "IR")
  (:iq "IQ")
  (:ie "IE")
  (:im "IM")
  (:il "IL")
  (:it "IT")
  (:jm "JM")
  (:jp "JP")
  (:je "JE")
  (:jo "JO")
  (:kz "KZ")
  (:ke "KE")
  (:ki "KI")
  (:kr "KR")
  (:kw "KW")
  (:kg "KG")
  (:la "LA")
  (:lv "LV")
  (:lb "LB")
  (:ls "LS")
  (:lr "LR")
  (:ly "LY")
  (:li "LI")
  (:lt "LT")
  (:lu "LU")
  (:mo "MO")
  (:mk "MK")
  (:mg "MG")
  (:mw "MW")
  (:my "MY")
  (:mv "MV")
  (:ml "ML")
  (:mt "MT")
  (:mh "MH")
  (:mq "MQ")
  (:mr "MR")
  (:mu "MU")
  (:yt "YT")
  (:mx "MX")
  (:fm "FM")
  (:md "MD")
  (:mc "MC")
  (:mn "MN")
  (:me "ME")
  (:ms "MS")
  (:ma "MA")
  (:mz "MZ")
  (:mm "MM")
  (:na "NA")
  (:nr "NR")
  (:np "NP")
  (:nl "NL")
  (:an "AN")
  (:nc "NC")
  (:nz "NZ")
  (:ni "NI")
  (:ne "NE")
  (:ng "NG")
  (:nu "NU")
  (:nf "NF")
  (:mp "MP")
  (:no "NO")
  (:om "OM")
  (:pk "PK")
  (:pw "PW")
  (:ps "PS")
  (:pa "PA")
  (:pg "PG")
  (:py "PY")
  (:pe "PE")
  (:ph "PH")
  (:pn "PN")
  (:pl "PL")
  (:pt "PT")
  (:pr "PR")
  (:qa "QA")
  (:re "RE")
  (:ro "RO")
  (:ru "RU")
  (:rw "RW")
  (:bl "BL")
  (:sh "SH")
  (:kn "KN")
  (:lc "LC")
  (:mf "MF")
  (:pm "PM")
  (:vc "VC")
  (:ws "WS")
  (:sm "SM")
  (:st "ST")
  (:sa "SA")
  (:sn "SN")
  (:rs "RS")
  (:sc "SC")
  (:sl "SL")
  (:sg "SG")
  (:sx "SX")
  (:sk "SK")
  (:si "SI")
  (:sb "SB")
  (:so "SO")
  (:za "ZA")
  (:gs "GS")
  (:ss "SS")
  (:es "ES")
  (:lk "LK")
  (:sd "SD")
  (:sr "SR")
  (:sj "SJ")
  (:sz "SZ")
  (:se "SE")
  (:ch "CH")
  (:sy "SY")
  (:tw "TW")
  (:tj "TJ")
  (:tz "TZ")
  (:th "TH")
  (:tl "TL")
  (:tg "TG")
  (:tk "TK")
  (:to "TO")
  (:tt "TT")
  (:tn "TN")
  (:tr "TR")
  (:tm "TM")
  (:tc "TC")
  (:tv "TV")
  (:ug "UG")
  (:ua "UA")
  (:ae "AE")
  (:gb "GB")
  (:um "UM")
  (:uy "UY")
  (:uz "UZ")
  (:vu "VU")
  (:ve "VE")
  (:vn "VN")
  (:vg "VG")
  (:vi "VI")
  (:wf "WF")
  (:eh "EH")
  (:ye "YE")
  (:zm "ZM")
  (:zw "ZW"))

(smithy/sdk/shapes:define-input create-engagement-invitation-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (engagement-identifier :target-type
                                  engagement-identifier :required common-lisp:t
                                  :member-name "EngagementIdentifier")
                                 (invitation :target-type invitation :required
                                  common-lisp:t :member-name "Invitation"))
                                (:shape-name
                                 "CreateEngagementInvitationRequest"))

(smithy/sdk/shapes:define-output create-engagement-invitation-response
                                 common-lisp:nil
                                 ((id :target-type
                                   engagement-invitation-identifier :required
                                   common-lisp:t :member-name "Id")
                                  (arn :target-type engagement-invitation-arn
                                   :required common-lisp:t :member-name "Arn"))
                                 (:shape-name
                                  "CreateEngagementInvitationResponse"))

(smithy/sdk/shapes:define-input create-engagement-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ClientToken")
                                 (title :target-type engagement-title :required
                                  common-lisp:t :member-name "Title")
                                 (description :target-type
                                  engagement-description :required
                                  common-lisp:t :member-name "Description")
                                 (contexts :target-type engagement-contexts
                                  :member-name "Contexts"))
                                (:shape-name "CreateEngagementRequest"))

(smithy/sdk/shapes:define-output create-engagement-response common-lisp:nil
                                 ((id :target-type engagement-identifier
                                   :member-name "Id")
                                  (arn :target-type engagement-arn :member-name
                                   "Arn"))
                                 (:shape-name "CreateEngagementResponse"))

(smithy/sdk/shapes:define-input create-opportunity-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (primary-needs-from-aws :target-type
                                  primary-needs-from-aws :member-name
                                  "PrimaryNeedsFromAws")
                                 (national-security :target-type
                                  national-security :member-name
                                  "NationalSecurity")
                                 (partner-opportunity-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "PartnerOpportunityIdentifier")
                                 (customer :target-type customer :member-name
                                  "Customer")
                                 (project :target-type project :member-name
                                  "Project")
                                 (opportunity-type :target-type
                                  opportunity-type :member-name
                                  "OpportunityType")
                                 (marketing :target-type marketing :member-name
                                  "Marketing")
                                 (software-revenue :target-type
                                  software-revenue :member-name
                                  "SoftwareRevenue")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ClientToken")
                                 (life-cycle :target-type life-cycle
                                  :member-name "LifeCycle")
                                 (origin :target-type opportunity-origin
                                  :member-name "Origin")
                                 (opportunity-team :target-type
                                  partner-opportunity-team-members-list
                                  :member-name "OpportunityTeam"))
                                (:shape-name "CreateOpportunityRequest"))

(smithy/sdk/shapes:define-output create-opportunity-response common-lisp:nil
                                 ((id :target-type opportunity-identifier
                                   :required common-lisp:t :member-name "Id")
                                  (partner-opportunity-identifier :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PartnerOpportunityIdentifier")
                                  (last-modified-date :target-type date-time
                                   :member-name "LastModifiedDate"))
                                 (:shape-name "CreateOpportunityResponse"))

(smithy/sdk/shapes:define-input create-resource-snapshot-job-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (engagement-identifier :target-type
                                  engagement-identifier :required common-lisp:t
                                  :member-name "EngagementIdentifier")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "ResourceIdentifier")
                                 (resource-snapshot-template-identifier
                                  :target-type resource-template-name :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotTemplateIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateResourceSnapshotJobRequest"))

(smithy/sdk/shapes:define-output create-resource-snapshot-job-response
                                 common-lisp:nil
                                 ((id :target-type
                                   resource-snapshot-job-identifier
                                   :member-name "Id")
                                  (arn :target-type resource-snapshot-job-arn
                                   :member-name "Arn"))
                                 (:shape-name
                                  "CreateResourceSnapshotJobResponse"))

(smithy/sdk/shapes:define-input create-resource-snapshot-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (engagement-identifier :target-type
                                  engagement-identifier :required common-lisp:t
                                  :member-name "EngagementIdentifier")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "ResourceIdentifier")
                                 (resource-snapshot-template-identifier
                                  :target-type resource-template-name :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotTemplateIdentifier")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "CreateResourceSnapshotRequest"))

(smithy/sdk/shapes:define-output create-resource-snapshot-response
                                 common-lisp:nil
                                 ((arn :target-type resource-arn :member-name
                                   "Arn")
                                  (revision :target-type
                                   resource-snapshot-revision :member-name
                                   "Revision"))
                                 (:shape-name "CreateResourceSnapshotResponse"))

(smithy/sdk/shapes:define-enum currency-code
    common-lisp:nil
  (:usd "USD")
  (:eur "EUR")
  (:gbp "GBP")
  (:aud "AUD")
  (:cad "CAD")
  (:cny "CNY")
  (:nzd "NZD")
  (:inr "INR")
  (:jpy "JPY")
  (:chf "CHF")
  (:sek "SEK")
  (:aed "AED")
  (:afn "AFN")
  (:all "ALL")
  (:amd "AMD")
  (:ang "ANG")
  (:aoa "AOA")
  (:ars "ARS")
  (:awg "AWG")
  (:azn "AZN")
  (:bam "BAM")
  (:bbd "BBD")
  (:bdt "BDT")
  (:bgn "BGN")
  (:bhd "BHD")
  (:bif "BIF")
  (:bmd "BMD")
  (:bnd "BND")
  (:bob "BOB")
  (:bov "BOV")
  (:brl "BRL")
  (:bsd "BSD")
  (:btn "BTN")
  (:bwp "BWP")
  (:byn "BYN")
  (:bzd "BZD")
  (:cdf "CDF")
  (:che "CHE")
  (:chw "CHW")
  (:clf "CLF")
  (:clp "CLP")
  (:cop "COP")
  (:cou "COU")
  (:crc "CRC")
  (:cuc "CUC")
  (:cup "CUP")
  (:cve "CVE")
  (:czk "CZK")
  (:djf "DJF")
  (:dkk "DKK")
  (:dop "DOP")
  (:dzd "DZD")
  (:egp "EGP")
  (:ern "ERN")
  (:etb "ETB")
  (:fjd "FJD")
  (:fkp "FKP")
  (:gel "GEL")
  (:ghs "GHS")
  (:gip "GIP")
  (:gmd "GMD")
  (:gnf "GNF")
  (:gtq "GTQ")
  (:gyd "GYD")
  (:hkd "HKD")
  (:hnl "HNL")
  (:hrk "HRK")
  (:htg "HTG")
  (:huf "HUF")
  (:idr "IDR")
  (:ils "ILS")
  (:iqd "IQD")
  (:irr "IRR")
  (:isk "ISK")
  (:jmd "JMD")
  (:jod "JOD")
  (:kes "KES")
  (:kgs "KGS")
  (:khr "KHR")
  (:kmf "KMF")
  (:kpw "KPW")
  (:krw "KRW")
  (:kwd "KWD")
  (:kyd "KYD")
  (:kzt "KZT")
  (:lak "LAK")
  (:lbp "LBP")
  (:lkr "LKR")
  (:lrd "LRD")
  (:lsl "LSL")
  (:lyd "LYD")
  (:mad "MAD")
  (:mdl "MDL")
  (:mga "MGA")
  (:mkd "MKD")
  (:mmk "MMK")
  (:mnt "MNT")
  (:mop "MOP")
  (:mru "MRU")
  (:mur "MUR")
  (:mvr "MVR")
  (:mwk "MWK")
  (:mxn "MXN")
  (:mxv "MXV")
  (:myr "MYR")
  (:mzn "MZN")
  (:nad "NAD")
  (:ngn "NGN")
  (:nio "NIO")
  (:nok "NOK")
  (:npr "NPR")
  (:omr "OMR")
  (:pab "PAB")
  (:pen "PEN")
  (:pgk "PGK")
  (:php "PHP")
  (:pkr "PKR")
  (:pln "PLN")
  (:pyg "PYG")
  (:qar "QAR")
  (:ron "RON")
  (:rsd "RSD")
  (:rub "RUB")
  (:rwf "RWF")
  (:sar "SAR")
  (:sbd "SBD")
  (:scr "SCR")
  (:sdg "SDG")
  (:sgd "SGD")
  (:shp "SHP")
  (:sll "SLL")
  (:sos "SOS")
  (:srd "SRD")
  (:ssp "SSP")
  (:stn "STN")
  (:svc "SVC")
  (:syp "SYP")
  (:szl "SZL")
  (:thb "THB")
  (:tjs "TJS")
  (:tmt "TMT")
  (:tnd "TND")
  (:top "TOP")
  (:try "TRY")
  (:ttd "TTD")
  (:twd "TWD")
  (:tzs "TZS")
  (:uah "UAH")
  (:ugx "UGX")
  (:usn "USN")
  (:uyi "UYI")
  (:uyu "UYU")
  (:uzs "UZS")
  (:vef "VEF")
  (:vnd "VND")
  (:vuv "VUV")
  (:wst "WST")
  (:xaf "XAF")
  (:xcd "XCD")
  (:xdr "XDR")
  (:xof "XOF")
  (:xpf "XPF")
  (:xsu "XSU")
  (:xua "XUA")
  (:yer "YER")
  (:zar "ZAR")
  (:zmw "ZMW")
  (:zwl "ZWL"))

(smithy/sdk/shapes:define-structure customer common-lisp:nil
                                    ((account :target-type account :member-name
                                      "Account")
                                     (contacts :target-type
                                      customer-contacts-list :member-name
                                      "Contacts"))
                                    (:shape-name "Customer"))

(smithy/sdk/shapes:define-list customer-contacts-list :member contact)

(smithy/sdk/shapes:define-structure customer-projects-context common-lisp:nil
                                    ((customer :target-type engagement-customer
                                      :member-name "Customer")
                                     (project :target-type
                                      engagement-customer-project-details
                                      :member-name "Project"))
                                    (:shape-name "CustomerProjectsContext"))

(smithy/sdk/shapes:define-structure customer-summary common-lisp:nil
                                    ((account :target-type account-summary
                                      :member-name "Account"))
                                    (:shape-name "CustomerSummary"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input delete-resource-snapshot-job-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (resource-snapshot-job-identifier :target-type
                                  resource-snapshot-job-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotJobIdentifier"))
                                (:shape-name
                                 "DeleteResourceSnapshotJobRequest"))

(smithy/sdk/shapes:define-enum delivery-model
    common-lisp:nil
  (:saas-or-paas "SaaS or PaaS")
  (:byol-or-ami "BYOL or AMI")
  (:managed-services "Managed Services")
  (:professional-services "Professional Services")
  (:resell "Resell")
  (:other "Other"))

(smithy/sdk/shapes:define-list delivery-models :member delivery-model)

(smithy/sdk/shapes:define-input disassociate-opportunity-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (opportunity-identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name
                                  "OpportunityIdentifier")
                                 (related-entity-type :target-type
                                  related-entity-type :required common-lisp:t
                                  :member-name "RelatedEntityType")
                                 (related-entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RelatedEntityIdentifier"))
                                (:shape-name "DisassociateOpportunityRequest"))

(smithy/sdk/shapes:define-type duns-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type engagement-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engagement-arn-or-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure engagement-context-details common-lisp:nil
                                    ((type :target-type engagement-context-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (payload :target-type
                                      engagement-context-payload :member-name
                                      "Payload"))
                                    (:shape-name "EngagementContextDetails"))

(smithy/sdk/shapes:define-union engagement-context-payload common-lisp:nil
                                ((customer-project :target-type
                                  customer-projects-context :member-name
                                  "CustomerProject"))
                                (:shape-name "EngagementContextPayload"))

(smithy/sdk/shapes:define-enum engagement-context-type
    common-lisp:nil
  (:customer-project "CustomerProject"))

(smithy/sdk/shapes:define-list engagement-contexts :member
                               engagement-context-details)

(smithy/sdk/shapes:define-structure engagement-customer common-lisp:nil
                                    ((industry :target-type industry :required
                                      common-lisp:t :member-name "Industry")
                                     (company-name :target-type company-name
                                      :required common-lisp:t :member-name
                                      "CompanyName")
                                     (website-url :target-type
                                      company-website-url :required
                                      common-lisp:t :member-name "WebsiteUrl")
                                     (country-code :target-type country-code
                                      :required common-lisp:t :member-name
                                      "CountryCode"))
                                    (:shape-name "EngagementCustomer"))

(smithy/sdk/shapes:define-type engagement-customer-business-problem
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure engagement-customer-project-details
                                    common-lisp:nil
                                    ((title :target-type
                                      engagement-customer-project-title
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (business-problem :target-type
                                      engagement-customer-business-problem
                                      :required common-lisp:t :member-name
                                      "BusinessProblem")
                                     (target-completion-date :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "TargetCompletionDate"))
                                    (:shape-name
                                     "EngagementCustomerProjectDetails"))

(smithy/sdk/shapes:define-type engagement-customer-project-title
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engagement-description
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type engagement-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list engagement-identifiers :member
                               engagement-arn-or-identifier)

common-lisp:nil

(smithy/sdk/shapes:define-type engagement-invitation-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engagement-invitation-arn-or-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engagement-invitation-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list engagement-invitation-identifiers :member
                               engagement-invitation-arn-or-identifier)

(smithy/sdk/shapes:define-enum engagement-invitation-payload-type
    common-lisp:nil
  (:opportunity-invitation "OpportunityInvitation"))

(smithy/sdk/shapes:define-list engagement-invitation-summaries :member
                               engagement-invitation-summary)

(smithy/sdk/shapes:define-structure engagement-invitation-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (payload-type :target-type
                                      engagement-invitation-payload-type
                                      :member-name "PayloadType")
                                     (id :target-type
                                      engagement-invitation-arn-or-identifier
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (engagement-id :target-type
                                      engagement-identifier :member-name
                                      "EngagementId")
                                     (engagement-title :target-type
                                      engagement-title :member-name
                                      "EngagementTitle")
                                     (status :target-type invitation-status
                                      :member-name "Status")
                                     (invitation-date :target-type date-time
                                      :member-name "InvitationDate")
                                     (expiration-date :target-type date-time
                                      :member-name "ExpirationDate")
                                     (sender-aws-account-id :target-type
                                      aws-account :member-name
                                      "SenderAwsAccountId")
                                     (sender-company-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SenderCompanyName")
                                     (receiver :target-type receiver
                                      :member-name "Receiver")
                                     (catalog :target-type catalog-identifier
                                      :required common-lisp:t :member-name
                                      "Catalog")
                                     (participant-type :target-type
                                      participant-type :member-name
                                      "ParticipantType"))
                                    (:shape-name "EngagementInvitationSummary"))

(smithy/sdk/shapes:define-list engagement-invitations-payload-type :member
                               engagement-invitation-payload-type)

(smithy/sdk/shapes:define-structure engagement-member common-lisp:nil
                                    ((company-name :target-type
                                      member-company-name :member-name
                                      "CompanyName")
                                     (website-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "WebsiteUrl")
                                     (account-id :target-type aws-account
                                      :member-name "AccountId"))
                                    (:shape-name "EngagementMember"))

(smithy/sdk/shapes:define-list engagement-member-summaries :member
                               engagement-member-summary)

(smithy/sdk/shapes:define-structure engagement-member-summary common-lisp:nil
                                    ((company-name :target-type
                                      member-company-name :member-name
                                      "CompanyName")
                                     (website-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "WebsiteUrl"))
                                    (:shape-name "EngagementMemberSummary"))

(smithy/sdk/shapes:define-list engagement-members :member engagement-member)

(smithy/sdk/shapes:define-type engagement-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure engagement-resource-association-summary
                                    common-lisp:nil
                                    ((catalog :target-type catalog-identifier
                                      :required common-lisp:t :member-name
                                      "Catalog")
                                     (engagement-id :target-type
                                      engagement-identifier :member-name
                                      "EngagementId")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-id :target-type
                                      resource-identifier :member-name
                                      "ResourceId")
                                     (created-by :target-type aws-account
                                      :member-name "CreatedBy"))
                                    (:shape-name
                                     "EngagementResourceAssociationSummary"))

(smithy/sdk/shapes:define-list engagement-resource-association-summary-list
                               :member engagement-resource-association-summary)

(smithy/sdk/shapes:define-enum engagement-score
    common-lisp:nil
  (:high "High")
  (:medium "Medium")
  (:low "Low"))

(smithy/sdk/shapes:define-structure engagement-sort common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder")
                                     (sort-by :target-type engagement-sort-name
                                      :required common-lisp:t :member-name
                                      "SortBy"))
                                    (:shape-name "EngagementSort"))

(smithy/sdk/shapes:define-enum engagement-sort-name
    common-lisp:nil
  (:created-date "CreatedDate"))

(smithy/sdk/shapes:define-structure engagement-summary common-lisp:nil
                                    ((arn :target-type engagement-arn
                                      :member-name "Arn")
                                     (id :target-type engagement-identifier
                                      :member-name "Id")
                                     (title :target-type engagement-title
                                      :member-name "Title")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (created-by :target-type aws-account
                                      :member-name "CreatedBy")
                                     (member-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MemberCount"))
                                    (:shape-name "EngagementSummary"))

(smithy/sdk/shapes:define-list engagement-summary-list :member
                               engagement-summary)

(smithy/sdk/shapes:define-type engagement-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure expected-customer-spend common-lisp:nil
                                    ((amount :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Amount")
                                     (currency-code :target-type currency-code
                                      :required common-lisp:t :member-name
                                      "CurrencyCode")
                                     (frequency :target-type payment-frequency
                                      :required common-lisp:t :member-name
                                      "Frequency")
                                     (target-company :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "TargetCompany")
                                     (estimation-url :target-type website-url
                                      :member-name "EstimationUrl"))
                                    (:shape-name "ExpectedCustomerSpend"))

(smithy/sdk/shapes:define-list expected-customer-spend-list :member
                               expected-customer-spend)

(smithy/sdk/shapes:define-list filter-identifier :member opportunity-identifier)

(smithy/sdk/shapes:define-list filter-life-cycle-review-status :member
                               review-status)

(smithy/sdk/shapes:define-list filter-life-cycle-stage :member stage)

(smithy/sdk/shapes:define-list filter-status :member solution-status)

(smithy/sdk/shapes:define-input get-aws-opportunity-summary-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (related-opportunity-identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name
                                  "RelatedOpportunityIdentifier"))
                                (:shape-name "GetAwsOpportunitySummaryRequest"))

(smithy/sdk/shapes:define-output get-aws-opportunity-summary-response
                                 common-lisp:nil
                                 ((catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (related-opportunity-id :target-type
                                   opportunity-identifier :member-name
                                   "RelatedOpportunityId")
                                  (origin :target-type opportunity-origin
                                   :member-name "Origin")
                                  (involvement-type :target-type
                                   sales-involvement-type :member-name
                                   "InvolvementType")
                                  (visibility :target-type visibility
                                   :member-name "Visibility")
                                  (life-cycle :target-type
                                   aws-opportunity-life-cycle :member-name
                                   "LifeCycle")
                                  (opportunity-team :target-type
                                   aws-opportunity-team-members-list
                                   :member-name "OpportunityTeam")
                                  (insights :target-type
                                   aws-opportunity-insights :member-name
                                   "Insights")
                                  (involvement-type-change-reason :target-type
                                   involvement-type-change-reason :member-name
                                   "InvolvementTypeChangeReason")
                                  (related-entity-ids :target-type
                                   aws-opportunity-related-entities
                                   :member-name "RelatedEntityIds")
                                  (customer :target-type
                                   aws-opportunity-customer :member-name
                                   "Customer")
                                  (project :target-type aws-opportunity-project
                                   :member-name "Project"))
                                 (:shape-name
                                  "GetAwsOpportunitySummaryResponse"))

(smithy/sdk/shapes:define-input get-engagement-invitation-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  engagement-invitation-arn-or-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier"))
                                (:shape-name "GetEngagementInvitationRequest"))

(smithy/sdk/shapes:define-output get-engagement-invitation-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Arn")
                                  (payload-type :target-type
                                   engagement-invitation-payload-type
                                   :member-name "PayloadType")
                                  (id :target-type
                                   engagement-invitation-arn-or-identifier
                                   :required common-lisp:t :member-name "Id")
                                  (engagement-id :target-type
                                   engagement-identifier :member-name
                                   "EngagementId")
                                  (engagement-title :target-type
                                   engagement-title :member-name
                                   "EngagementTitle")
                                  (status :target-type invitation-status
                                   :member-name "Status")
                                  (invitation-date :target-type date-time
                                   :member-name "InvitationDate")
                                  (expiration-date :target-type date-time
                                   :member-name "ExpirationDate")
                                  (sender-aws-account-id :target-type
                                   aws-account :member-name
                                   "SenderAwsAccountId")
                                  (sender-company-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SenderCompanyName")
                                  (receiver :target-type receiver :member-name
                                   "Receiver")
                                  (catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (rejection-reason :target-type
                                   rejection-reason-string :member-name
                                   "RejectionReason")
                                  (payload :target-type payload :member-name
                                   "Payload")
                                  (invitation-message :target-type
                                   invitation-message :member-name
                                   "InvitationMessage")
                                  (engagement-description :target-type
                                   engagement-description :member-name
                                   "EngagementDescription")
                                  (existing-members :target-type
                                   engagement-member-summaries :member-name
                                   "ExistingMembers"))
                                 (:shape-name
                                  "GetEngagementInvitationResponse"))

(smithy/sdk/shapes:define-input get-engagement-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  engagement-arn-or-identifier :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "GetEngagementRequest"))

(smithy/sdk/shapes:define-output get-engagement-response common-lisp:nil
                                 ((id :target-type engagement-identifier
                                   :member-name "Id")
                                  (arn :target-type engagement-arn :member-name
                                   "Arn")
                                  (title :target-type engagement-title
                                   :member-name "Title")
                                  (description :target-type
                                   engagement-description :member-name
                                   "Description")
                                  (created-at :target-type date-time
                                   :member-name "CreatedAt")
                                  (created-by :target-type aws-account
                                   :member-name "CreatedBy")
                                  (member-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "MemberCount")
                                  (contexts :target-type engagement-contexts
                                   :member-name "Contexts"))
                                 (:shape-name "GetEngagementResponse"))

(smithy/sdk/shapes:define-input get-opportunity-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "GetOpportunityRequest"))

(smithy/sdk/shapes:define-output get-opportunity-response common-lisp:nil
                                 ((catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (primary-needs-from-aws :target-type
                                   primary-needs-from-aws :member-name
                                   "PrimaryNeedsFromAws")
                                  (national-security :target-type
                                   national-security :member-name
                                   "NationalSecurity")
                                  (partner-opportunity-identifier :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PartnerOpportunityIdentifier")
                                  (customer :target-type customer :member-name
                                   "Customer")
                                  (project :target-type project :member-name
                                   "Project")
                                  (opportunity-type :target-type
                                   opportunity-type :member-name
                                   "OpportunityType")
                                  (marketing :target-type marketing
                                   :member-name "Marketing")
                                  (software-revenue :target-type
                                   software-revenue :member-name
                                   "SoftwareRevenue")
                                  (id :target-type opportunity-identifier
                                   :required common-lisp:t :member-name "Id")
                                  (arn :target-type opportunity-arn
                                   :member-name "Arn")
                                  (last-modified-date :target-type date-time
                                   :required common-lisp:t :member-name
                                   "LastModifiedDate")
                                  (created-date :target-type date-time
                                   :required common-lisp:t :member-name
                                   "CreatedDate")
                                  (related-entity-identifiers :target-type
                                   related-entity-identifiers :required
                                   common-lisp:t :member-name
                                   "RelatedEntityIdentifiers")
                                  (life-cycle :target-type life-cycle
                                   :member-name "LifeCycle")
                                  (opportunity-team :target-type
                                   partner-opportunity-team-members-list
                                   :member-name "OpportunityTeam"))
                                 (:shape-name "GetOpportunityResponse"))

(smithy/sdk/shapes:define-input get-resource-snapshot-job-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (resource-snapshot-job-identifier :target-type
                                  resource-snapshot-job-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotJobIdentifier"))
                                (:shape-name "GetResourceSnapshotJobRequest"))

(smithy/sdk/shapes:define-output get-resource-snapshot-job-response
                                 common-lisp:nil
                                 ((catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (id :target-type
                                   resource-snapshot-job-identifier
                                   :member-name "Id")
                                  (arn :target-type resource-snapshot-job-arn
                                   :member-name "Arn")
                                  (engagement-id :target-type
                                   engagement-identifier :member-name
                                   "EngagementId")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (resource-id :target-type resource-identifier
                                   :member-name "ResourceId")
                                  (resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (resource-snapshot-template-name :target-type
                                   resource-template-name :member-name
                                   "ResourceSnapshotTemplateName")
                                  (created-at :target-type date-time
                                   :member-name "CreatedAt")
                                  (status :target-type
                                   resource-snapshot-job-status :member-name
                                   "Status")
                                  (last-successful-execution-date :target-type
                                   date-time :member-name
                                   "LastSuccessfulExecutionDate")
                                  (last-failure :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "LastFailure"))
                                 (:shape-name "GetResourceSnapshotJobResponse"))

(smithy/sdk/shapes:define-input get-resource-snapshot-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (engagement-identifier :target-type
                                  engagement-identifier :required common-lisp:t
                                  :member-name "EngagementIdentifier")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "ResourceIdentifier")
                                 (resource-snapshot-template-identifier
                                  :target-type resource-template-name :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotTemplateIdentifier")
                                 (revision :target-type
                                  resource-snapshot-revision :member-name
                                  "Revision"))
                                (:shape-name "GetResourceSnapshotRequest"))

(smithy/sdk/shapes:define-output get-resource-snapshot-response common-lisp:nil
                                 ((catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (arn :target-type resource-arn :member-name
                                   "Arn")
                                  (created-by :target-type aws-account
                                   :member-name "CreatedBy")
                                  (created-at :target-type date-time
                                   :member-name "CreatedAt")
                                  (engagement-id :target-type
                                   engagement-identifier :member-name
                                   "EngagementId")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (resource-id :target-type resource-identifier
                                   :member-name "ResourceId")
                                  (resource-snapshot-template-name :target-type
                                   resource-template-name :member-name
                                   "ResourceSnapshotTemplateName")
                                  (revision :target-type
                                   resource-snapshot-revision :member-name
                                   "Revision")
                                  (payload :target-type
                                   resource-snapshot-payload :member-name
                                   "Payload"))
                                 (:shape-name "GetResourceSnapshotResponse"))

(smithy/sdk/shapes:define-input get-selling-system-settings-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog"))
                                (:shape-name "GetSellingSystemSettingsRequest"))

(smithy/sdk/shapes:define-output get-selling-system-settings-response
                                 common-lisp:nil
                                 ((catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (resource-snapshot-job-role-arn :target-type
                                   resource-snapshot-job-role-arn :member-name
                                   "ResourceSnapshotJobRoleArn"))
                                 (:shape-name
                                  "GetSellingSystemSettingsResponse"))

(smithy/sdk/shapes:define-enum industry
    common-lisp:nil
  (:aerospace-satellite "Aerospace")
  (:agriculture "Agriculture")
  (:automotive "Automotive")
  (:computers-electronics "Computers and Electronics")
  (:consumer-goods "Consumer Goods")
  (:education "Education")
  (:energy-oil-gas "Energy - Oil and Gas")
  (:energy-power-utilities "Energy - Power and Utilities")
  (:financial-services "Financial Services")
  (:gaming "Gaming")
  (:government "Government")
  (:healthcare "Healthcare")
  (:hospitality "Hospitality")
  (:life-sciences "Life Sciences")
  (:manufacturing "Manufacturing")
  (:marketing-advertising "Marketing and Advertising")
  (:media-entertainment "Media and Entertainment")
  (:mining "Mining")
  (:non-profit-organization "Non-Profit Organization")
  (:professional-services "Professional Services")
  (:realestate-construction "Real Estate and Construction")
  (:retail "Retail")
  (:software-internet "Software and Internet")
  (:telecommunications "Telecommunications")
  (:transportation-logistics "Transportation and Logistics")
  (:travel "Travel")
  (:wholesale-distribution "Wholesale and Distribution")
  (:other "Other"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure invitation common-lisp:nil
                                    ((message :target-type invitation-message
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (receiver :target-type receiver :required
                                      common-lisp:t :member-name "Receiver")
                                     (payload :target-type payload :required
                                      common-lisp:t :member-name "Payload"))
                                    (:shape-name "Invitation"))

(smithy/sdk/shapes:define-type invitation-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum invitation-status
    common-lisp:nil
  (:accepted "ACCEPTED")
  (:pending "PENDING")
  (:rejected "REJECTED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-list invitation-status-list :member invitation-status)

(smithy/sdk/shapes:define-enum involvement-type-change-reason
    common-lisp:nil
  (:expansion-opportunity "Expansion Opportunity")
  (:change-in-deal-information "Change in Deal Information")
  (:customer-requested "Customer Requested")
  (:technical-complexity "Technical Complexity")
  (:risk-mitigation "Risk Mitigation"))

(smithy/sdk/shapes:define-type job-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure last-modified-date common-lisp:nil
                                    ((after-last-modified-date :target-type
                                      date-time :member-name
                                      "AfterLastModifiedDate")
                                     (before-last-modified-date :target-type
                                      date-time :member-name
                                      "BeforeLastModifiedDate"))
                                    (:shape-name "LastModifiedDate"))

(smithy/sdk/shapes:define-structure life-cycle common-lisp:nil
                                    ((stage :target-type stage :member-name
                                      "Stage")
                                     (closed-lost-reason :target-type
                                      closed-lost-reason :member-name
                                      "ClosedLostReason")
                                     (next-steps :target-type pii-string
                                      :member-name "NextSteps")
                                     (target-close-date :target-type date
                                      :member-name "TargetCloseDate")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus")
                                     (review-comments :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ReviewComments")
                                     (review-status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ReviewStatusReason")
                                     (next-steps-history :target-type
                                      next-steps-histories :member-name
                                      "NextStepsHistory"))
                                    (:shape-name "LifeCycle"))

(smithy/sdk/shapes:define-structure life-cycle-for-view common-lisp:nil
                                    ((target-close-date :target-type date
                                      :member-name "TargetCloseDate")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus")
                                     (stage :target-type stage :member-name
                                      "Stage")
                                     (next-steps :target-type pii-string
                                      :member-name "NextSteps"))
                                    (:shape-name "LifeCycleForView"))

(smithy/sdk/shapes:define-structure life-cycle-summary common-lisp:nil
                                    ((stage :target-type stage :member-name
                                      "Stage")
                                     (closed-lost-reason :target-type
                                      closed-lost-reason :member-name
                                      "ClosedLostReason")
                                     (next-steps :target-type pii-string
                                      :member-name "NextSteps")
                                     (target-close-date :target-type date
                                      :member-name "TargetCloseDate")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus")
                                     (review-comments :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ReviewComments")
                                     (review-status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ReviewStatusReason"))
                                    (:shape-name "LifeCycleSummary"))

(smithy/sdk/shapes:define-list
 list-engagement-by-accepting-invitation-task-summaries :member
 list-engagement-by-accepting-invitation-task-summary)

(smithy/sdk/shapes:define-structure
 list-engagement-by-accepting-invitation-task-summary common-lisp:nil
 ((task-id :target-type task-identifier :member-name "TaskId")
  (task-arn :target-type task-arn :member-name "TaskArn")
  (start-time :target-type date-time :member-name "StartTime")
  (task-status :target-type task-status :member-name "TaskStatus")
  (message :target-type smithy/sdk/smithy-types:string :member-name "Message")
  (reason-code :target-type reason-code :member-name "ReasonCode")
  (opportunity-id :target-type opportunity-identifier :member-name
   "OpportunityId")
  (resource-snapshot-job-id :target-type resource-snapshot-job-identifier
   :member-name "ResourceSnapshotJobId")
  (engagement-invitation-id :target-type engagement-invitation-identifier
   :member-name "EngagementInvitationId"))
 (:shape-name "ListEngagementByAcceptingInvitationTaskSummary"))

(smithy/sdk/shapes:define-input
 list-engagement-by-accepting-invitation-tasks-request common-lisp:nil
 ((max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "MaxResults")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "NextToken")
  (sort :target-type list-tasks-sort-base :member-name "Sort")
  (catalog :target-type catalog-identifier :required common-lisp:t :member-name
   "Catalog")
  (task-status :target-type task-statuses :member-name "TaskStatus")
  (opportunity-identifier :target-type opportunity-identifiers :member-name
   "OpportunityIdentifier")
  (engagement-invitation-identifier :target-type
   engagement-invitation-identifiers :member-name
   "EngagementInvitationIdentifier")
  (task-identifier :target-type task-identifiers :member-name
   "TaskIdentifier"))
 (:shape-name "ListEngagementByAcceptingInvitationTasksRequest"))

(smithy/sdk/shapes:define-output
 list-engagement-by-accepting-invitation-tasks-response common-lisp:nil
 ((task-summaries :target-type
   list-engagement-by-accepting-invitation-task-summaries :member-name
   "TaskSummaries")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "NextToken"))
 (:shape-name "ListEngagementByAcceptingInvitationTasksResponse"))

(smithy/sdk/shapes:define-list list-engagement-from-opportunity-task-summaries
                               :member
                               list-engagement-from-opportunity-task-summary)

(smithy/sdk/shapes:define-structure
 list-engagement-from-opportunity-task-summary common-lisp:nil
 ((task-id :target-type task-identifier :member-name "TaskId")
  (task-arn :target-type task-arn :member-name "TaskArn")
  (start-time :target-type date-time :member-name "StartTime")
  (task-status :target-type task-status :member-name "TaskStatus")
  (message :target-type smithy/sdk/smithy-types:string :member-name "Message")
  (reason-code :target-type reason-code :member-name "ReasonCode")
  (opportunity-id :target-type opportunity-identifier :member-name
   "OpportunityId")
  (resource-snapshot-job-id :target-type resource-snapshot-job-identifier
   :member-name "ResourceSnapshotJobId")
  (engagement-id :target-type engagement-identifier :member-name
   "EngagementId")
  (engagement-invitation-id :target-type engagement-invitation-identifier
   :member-name "EngagementInvitationId"))
 (:shape-name "ListEngagementFromOpportunityTaskSummary"))

(smithy/sdk/shapes:define-input list-engagement-from-opportunity-tasks-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (sort :target-type list-tasks-sort-base
                                  :member-name "Sort")
                                 (catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (task-status :target-type task-statuses
                                  :member-name "TaskStatus")
                                 (task-identifier :target-type task-identifiers
                                  :member-name "TaskIdentifier")
                                 (opportunity-identifier :target-type
                                  opportunity-identifiers :member-name
                                  "OpportunityIdentifier")
                                 (engagement-identifier :target-type
                                  engagement-identifiers :member-name
                                  "EngagementIdentifier"))
                                (:shape-name
                                 "ListEngagementFromOpportunityTasksRequest"))

(smithy/sdk/shapes:define-output
 list-engagement-from-opportunity-tasks-response common-lisp:nil
 ((task-summaries :target-type list-engagement-from-opportunity-task-summaries
   :member-name "TaskSummaries")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "NextToken"))
 (:shape-name "ListEngagementFromOpportunityTasksResponse"))

(smithy/sdk/shapes:define-input list-engagement-invitations-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (sort :target-type
                                  opportunity-engagement-invitation-sort
                                  :member-name "Sort")
                                 (payload-type :target-type
                                  engagement-invitations-payload-type
                                  :member-name "PayloadType")
                                 (participant-type :target-type
                                  participant-type :required common-lisp:t
                                  :member-name "ParticipantType")
                                 (status :target-type invitation-status-list
                                  :member-name "Status")
                                 (engagement-identifier :target-type
                                  engagement-identifiers :member-name
                                  "EngagementIdentifier")
                                 (sender-aws-account-id :target-type
                                  aws-account-id-or-alias-list :member-name
                                  "SenderAwsAccountId"))
                                (:shape-name
                                 "ListEngagementInvitationsRequest"))

(smithy/sdk/shapes:define-output list-engagement-invitations-response
                                 common-lisp:nil
                                 ((engagement-invitation-summaries :target-type
                                   engagement-invitation-summaries :member-name
                                   "EngagementInvitationSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListEngagementInvitationsResponse"))

(smithy/sdk/shapes:define-input list-engagement-members-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  engagement-arn-or-identifier :required
                                  common-lisp:t :member-name "Identifier")
                                 (max-results :target-type member-page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListEngagementMembersRequest"))

(smithy/sdk/shapes:define-output list-engagement-members-response
                                 common-lisp:nil
                                 ((engagement-member-list :target-type
                                   engagement-members :required common-lisp:t
                                   :member-name "EngagementMemberList")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListEngagementMembersResponse"))

(smithy/sdk/shapes:define-input list-engagement-resource-associations-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (engagement-identifier :target-type
                                  engagement-identifier :member-name
                                  "EngagementIdentifier")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "ResourceIdentifier")
                                 (created-by :target-type aws-account
                                  :member-name "CreatedBy"))
                                (:shape-name
                                 "ListEngagementResourceAssociationsRequest"))

(smithy/sdk/shapes:define-output list-engagement-resource-associations-response
                                 common-lisp:nil
                                 ((engagement-resource-association-summaries
                                   :target-type
                                   engagement-resource-association-summary-list
                                   :required common-lisp:t :member-name
                                   "EngagementResourceAssociationSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListEngagementResourceAssociationsResponse"))

(smithy/sdk/shapes:define-input list-engagements-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (created-by :target-type aws-account-list
                                  :member-name "CreatedBy")
                                 (exclude-created-by :target-type
                                  aws-account-list :member-name
                                  "ExcludeCreatedBy")
                                 (sort :target-type engagement-sort
                                  :member-name "Sort")
                                 (max-results :target-type engagement-page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (engagement-identifier :target-type
                                  engagement-identifiers :member-name
                                  "EngagementIdentifier"))
                                (:shape-name "ListEngagementsRequest"))

(smithy/sdk/shapes:define-output list-engagements-response common-lisp:nil
                                 ((engagement-summary-list :target-type
                                   engagement-summary-list :required
                                   common-lisp:t :member-name
                                   "EngagementSummaryList")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListEngagementsResponse"))

(smithy/sdk/shapes:define-input list-opportunities-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (sort :target-type opportunity-sort
                                  :member-name "Sort")
                                 (last-modified-date :target-type
                                  last-modified-date :member-name
                                  "LastModifiedDate")
                                 (identifier :target-type filter-identifier
                                  :member-name "Identifier")
                                 (life-cycle-stage :target-type
                                  filter-life-cycle-stage :member-name
                                  "LifeCycleStage")
                                 (life-cycle-review-status :target-type
                                  filter-life-cycle-review-status :member-name
                                  "LifeCycleReviewStatus")
                                 (customer-company-name :target-type
                                  string-list :member-name
                                  "CustomerCompanyName"))
                                (:shape-name "ListOpportunitiesRequest"))

(smithy/sdk/shapes:define-output list-opportunities-response common-lisp:nil
                                 ((opportunity-summaries :target-type
                                   opportunity-summaries :required
                                   common-lisp:t :member-name
                                   "OpportunitySummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListOpportunitiesResponse"))

(smithy/sdk/shapes:define-input list-resource-snapshot-jobs-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (engagement-identifier :target-type
                                  engagement-identifier :member-name
                                  "EngagementIdentifier")
                                 (status :target-type
                                  resource-snapshot-job-status :member-name
                                  "Status")
                                 (sort :target-type sort-object :member-name
                                  "Sort"))
                                (:shape-name "ListResourceSnapshotJobsRequest"))

(smithy/sdk/shapes:define-output list-resource-snapshot-jobs-response
                                 common-lisp:nil
                                 ((resource-snapshot-job-summaries :target-type
                                   resource-snapshot-job-summary-list :required
                                   common-lisp:t :member-name
                                   "ResourceSnapshotJobSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListResourceSnapshotJobsResponse"))

(smithy/sdk/shapes:define-input list-resource-snapshots-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (engagement-identifier :target-type
                                  engagement-identifier :required common-lisp:t
                                  :member-name "EngagementIdentifier")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "ResourceIdentifier")
                                 (resource-snapshot-template-identifier
                                  :target-type resource-template-name
                                  :member-name
                                  "ResourceSnapshotTemplateIdentifier")
                                 (created-by :target-type aws-account
                                  :member-name "CreatedBy"))
                                (:shape-name "ListResourceSnapshotsRequest"))

(smithy/sdk/shapes:define-output list-resource-snapshots-response
                                 common-lisp:nil
                                 ((resource-snapshot-summaries :target-type
                                   resource-snapshot-summary-list :required
                                   common-lisp:t :member-name
                                   "ResourceSnapshotSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListResourceSnapshotsResponse"))

(smithy/sdk/shapes:define-input list-solutions-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (sort :target-type solution-sort :member-name
                                  "Sort")
                                 (status :target-type filter-status
                                  :member-name "Status")
                                 (identifier :target-type solution-identifiers
                                  :member-name "Identifier")
                                 (category :target-type string-list
                                  :member-name "Category"))
                                (:shape-name "ListSolutionsRequest"))

(smithy/sdk/shapes:define-output list-solutions-response common-lisp:nil
                                 ((solution-summaries :target-type
                                   solution-list :required common-lisp:t
                                   :member-name "SolutionSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListSolutionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-tasks-sort-base common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder")
                                     (sort-by :target-type list-tasks-sort-name
                                      :required common-lisp:t :member-name
                                      "SortBy"))
                                    (:shape-name "ListTasksSortBase"))

(smithy/sdk/shapes:define-enum list-tasks-sort-name
    common-lisp:nil
  (:start-time "StartTime"))

(smithy/sdk/shapes:define-structure marketing common-lisp:nil
                                    ((campaign-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CampaignName")
                                     (source :target-type marketing-source
                                      :member-name "Source")
                                     (use-cases :target-type use-cases
                                      :member-name "UseCases")
                                     (channels :target-type channels
                                      :member-name "Channels")
                                     (aws-funding-used :target-type
                                      aws-funding-used :member-name
                                      "AwsFundingUsed"))
                                    (:shape-name "Marketing"))

(smithy/sdk/shapes:define-enum marketing-source
    common-lisp:nil
  (:marketing-activity "Marketing Activity")
  (:none "None"))

(smithy/sdk/shapes:define-type member-company-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type member-page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure monetary-value common-lisp:nil
                                    ((amount :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Amount")
                                     (currency-code :target-type currency-code
                                      :required common-lisp:t :member-name
                                      "CurrencyCode"))
                                    (:shape-name "MonetaryValue"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum national-security
    common-lisp:nil
  (:yes "Yes")
  (:no "No"))

(smithy/sdk/shapes:define-list next-steps-histories :member next-steps-history)

(smithy/sdk/shapes:define-structure next-steps-history common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value")
                                     (time :target-type date-time :required
                                      common-lisp:t :member-name "Time"))
                                    (:shape-name "NextStepsHistory"))

common-lisp:nil

(smithy/sdk/shapes:define-type opportunity-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure opportunity-engagement-invitation-sort
                                    common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder")
                                     (sort-by :target-type
                                      opportunity-engagement-invitation-sort-name
                                      :required common-lisp:t :member-name
                                      "SortBy"))
                                    (:shape-name
                                     "OpportunityEngagementInvitationSort"))

(smithy/sdk/shapes:define-enum opportunity-engagement-invitation-sort-name
    common-lisp:nil
  (:invitation-date "InvitationDate"))

(smithy/sdk/shapes:define-type opportunity-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list opportunity-identifiers :member
                               opportunity-identifier)

(smithy/sdk/shapes:define-structure opportunity-invitation-payload
                                    common-lisp:nil
                                    ((sender-contacts :target-type
                                      sender-contact-list :member-name
                                      "SenderContacts")
                                     (receiver-responsibilities :target-type
                                      receiver-responsibility-list :required
                                      common-lisp:t :member-name
                                      "ReceiverResponsibilities")
                                     (customer :target-type engagement-customer
                                      :required common-lisp:t :member-name
                                      "Customer")
                                     (project :target-type project-details
                                      :required common-lisp:t :member-name
                                      "Project"))
                                    (:shape-name
                                     "OpportunityInvitationPayload"))

(smithy/sdk/shapes:define-enum opportunity-origin
    common-lisp:nil
  (:aws-referral "AWS Referral")
  (:partner-referral "Partner Referral"))

(smithy/sdk/shapes:define-structure opportunity-sort common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder")
                                     (sort-by :target-type
                                      opportunity-sort-name :required
                                      common-lisp:t :member-name "SortBy"))
                                    (:shape-name "OpportunitySort"))

(smithy/sdk/shapes:define-enum opportunity-sort-name
    common-lisp:nil
  (:last-modifieddate "LastModifiedDate")
  (:identifier "Identifier")
  (:customer-company-name "CustomerCompanyName"))

(smithy/sdk/shapes:define-list opportunity-summaries :member
                               opportunity-summary)

(smithy/sdk/shapes:define-structure opportunity-summary common-lisp:nil
                                    ((catalog :target-type catalog-identifier
                                      :required common-lisp:t :member-name
                                      "Catalog")
                                     (id :target-type opportunity-identifier
                                      :member-name "Id")
                                     (arn :target-type opportunity-arn
                                      :member-name "Arn")
                                     (partner-opportunity-identifier
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "PartnerOpportunityIdentifier")
                                     (opportunity-type :target-type
                                      opportunity-type :member-name
                                      "OpportunityType")
                                     (last-modified-date :target-type date-time
                                      :member-name "LastModifiedDate")
                                     (created-date :target-type date-time
                                      :member-name "CreatedDate")
                                     (life-cycle :target-type
                                      life-cycle-summary :member-name
                                      "LifeCycle")
                                     (customer :target-type customer-summary
                                      :member-name "Customer")
                                     (project :target-type project-summary
                                      :member-name "Project"))
                                    (:shape-name "OpportunitySummary"))

(smithy/sdk/shapes:define-structure opportunity-summary-view common-lisp:nil
                                    ((opportunity-type :target-type
                                      opportunity-type :member-name
                                      "OpportunityType")
                                     (lifecycle :target-type
                                      life-cycle-for-view :member-name
                                      "Lifecycle")
                                     (opportunity-team :target-type
                                      partner-opportunity-team-members-list
                                      :member-name "OpportunityTeam")
                                     (primary-needs-from-aws :target-type
                                      primary-needs-from-aws :member-name
                                      "PrimaryNeedsFromAws")
                                     (customer :target-type customer
                                      :member-name "Customer")
                                     (project :target-type project-view
                                      :member-name "Project")
                                     (related-entity-identifiers :target-type
                                      related-entity-identifiers :member-name
                                      "RelatedEntityIdentifiers"))
                                    (:shape-name "OpportunitySummaryView"))

(smithy/sdk/shapes:define-enum opportunity-type
    common-lisp:nil
  (:net-new-business "Net New Business")
  (:flat-renewal "Flat Renewal")
  (:expansion "Expansion"))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum participant-type
    common-lisp:nil
  (:sender "SENDER")
  (:receiver "RECEIVER"))

(smithy/sdk/shapes:define-list partner-opportunity-team-members-list :member
                               contact)

(smithy/sdk/shapes:define-union payload common-lisp:nil
                                ((opportunity-invitation :target-type
                                  opportunity-invitation-payload :member-name
                                  "OpportunityInvitation"))
                                (:shape-name "Payload"))

(smithy/sdk/shapes:define-enum payment-frequency
    common-lisp:nil
  (:monthly "Monthly"))

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pii-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum primary-need-from-aws
    common-lisp:nil
  (:co-sell-architectural-validation "Co-Sell - Architectural Validation")
  (:co-sell-business-presentation "Co-Sell - Business Presentation")
  (:co-sell-competitive-information "Co-Sell - Competitive Information")
  (:co-sell-pricing-assistance "Co-Sell - Pricing Assistance")
  (:co-sell-technical-consultation "Co-Sell - Technical Consultation")
  (:co-sell-total-cost-of-ownership-evaluation
   "Co-Sell - Total Cost of Ownership Evaluation")
  (:co-sell-deal-support "Co-Sell - Deal Support")
  (:co-sell-support-for-public-tender-rfx
   "Co-Sell - Support for Public Tender / RFx"))

(smithy/sdk/shapes:define-list primary-needs-from-aws :member
                               primary-need-from-aws)

(smithy/sdk/shapes:define-list profile-next-steps-histories :member
                               profile-next-steps-history)

(smithy/sdk/shapes:define-structure profile-next-steps-history common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value")
                                     (time :target-type date-time :required
                                      common-lisp:t :member-name "Time"))
                                    (:shape-name "ProfileNextStepsHistory"))

(smithy/sdk/shapes:define-structure project common-lisp:nil
                                    ((delivery-models :target-type
                                      delivery-models :member-name
                                      "DeliveryModels")
                                     (expected-customer-spend :target-type
                                      expected-customer-spend-list :member-name
                                      "ExpectedCustomerSpend")
                                     (title :target-type pii-string
                                      :member-name "Title")
                                     (apn-programs :target-type apn-programs
                                      :member-name "ApnPrograms")
                                     (customer-business-problem :target-type
                                      pii-string :member-name
                                      "CustomerBusinessProblem")
                                     (customer-use-case :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CustomerUseCase")
                                     (related-opportunity-identifier
                                      :target-type opportunity-identifier
                                      :member-name
                                      "RelatedOpportunityIdentifier")
                                     (sales-activities :target-type
                                      sales-activities :member-name
                                      "SalesActivities")
                                     (competitor-name :target-type
                                      competitor-name :member-name
                                      "CompetitorName")
                                     (other-competitor-names :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OtherCompetitorNames")
                                     (other-solution-description :target-type
                                      pii-string :member-name
                                      "OtherSolutionDescription")
                                     (additional-comments :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "AdditionalComments"))
                                    (:shape-name "Project"))

(smithy/sdk/shapes:define-structure project-details common-lisp:nil
                                    ((business-problem :target-type
                                      engagement-customer-business-problem
                                      :required common-lisp:t :member-name
                                      "BusinessProblem")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Title")
                                     (target-completion-date :target-type date
                                      :required common-lisp:t :member-name
                                      "TargetCompletionDate")
                                     (expected-customer-spend :target-type
                                      expected-customer-spend-list :required
                                      common-lisp:t :member-name
                                      "ExpectedCustomerSpend"))
                                    (:shape-name "ProjectDetails"))

(smithy/sdk/shapes:define-structure project-summary common-lisp:nil
                                    ((delivery-models :target-type
                                      delivery-models :member-name
                                      "DeliveryModels")
                                     (expected-customer-spend :target-type
                                      expected-customer-spend-list :member-name
                                      "ExpectedCustomerSpend"))
                                    (:shape-name "ProjectSummary"))

(smithy/sdk/shapes:define-structure project-view common-lisp:nil
                                    ((delivery-models :target-type
                                      delivery-models :member-name
                                      "DeliveryModels")
                                     (expected-customer-spend :target-type
                                      expected-customer-spend-list :member-name
                                      "ExpectedCustomerSpend")
                                     (customer-use-case :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CustomerUseCase")
                                     (sales-activities :target-type
                                      sales-activities :member-name
                                      "SalesActivities")
                                     (other-solution-description :target-type
                                      pii-string :member-name
                                      "OtherSolutionDescription"))
                                    (:shape-name "ProjectView"))

(smithy/sdk/shapes:define-input put-selling-system-settings-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (resource-snapshot-job-role-identifier
                                  :target-type
                                  resource-snapshot-job-role-identifier
                                  :member-name
                                  "ResourceSnapshotJobRoleIdentifier"))
                                (:shape-name "PutSellingSystemSettingsRequest"))

(smithy/sdk/shapes:define-output put-selling-system-settings-response
                                 common-lisp:nil
                                 ((catalog :target-type catalog-identifier
                                   :required common-lisp:t :member-name
                                   "Catalog")
                                  (resource-snapshot-job-role-arn :target-type
                                   resource-snapshot-job-role-arn :member-name
                                   "ResourceSnapshotJobRoleArn"))
                                 (:shape-name
                                  "PutSellingSystemSettingsResponse"))

(smithy/sdk/shapes:define-enum reason-code
    common-lisp:nil
  (:invitation-access-denied "InvitationAccessDenied")
  (:invitation-validation-failed "InvitationValidationFailed")
  (:engagement-access-denied "EngagementAccessDenied")
  (:opportunity-access-denied "OpportunityAccessDenied")
  (:resource-snapshot-job-access-denied "ResourceSnapshotJobAccessDenied")
  (:resource-snapshot-job-validation-failed
   "ResourceSnapshotJobValidationFailed")
  (:resource-snapshot-job-conflict "ResourceSnapshotJobConflict")
  (:engagement-validation-failed "EngagementValidationFailed")
  (:engagement-conflict "EngagementConflict")
  (:opportunity-submission-failed "OpportunitySubmissionFailed")
  (:engagement-invitation-conflict "EngagementInvitationConflict")
  (:internal-error "InternalError")
  (:opportunity-validation-failed "OpportunityValidationFailed")
  (:opportunity-conflict "OpportunityConflict")
  (:resource-snapshot-access-denied "ResourceSnapshotAccessDenied")
  (:resource-snapshot-validation-failed "ResourceSnapshotValidationFailed")
  (:resource-snapshot-conflict "ResourceSnapshotConflict")
  (:service-quota-exceeded "ServiceQuotaExceeded")
  (:request-throttled "RequestThrottled"))

(smithy/sdk/shapes:define-union receiver common-lisp:nil
                                ((account :target-type account-receiver
                                  :member-name "Account"))
                                (:shape-name "Receiver"))

(smithy/sdk/shapes:define-enum receiver-responsibility
    common-lisp:nil
  (:distributor "Distributor")
  (:reseller "Reseller")
  (:hardware-partner "Hardware Partner")
  (:managed-service-provider "Managed Service Provider")
  (:software-partner "Software Partner")
  (:services-partner "Services Partner")
  (:training-partner "Training Partner")
  (:co-sell-facilitator "Co-Sell Facilitator")
  (:facilitator "Facilitator"))

(smithy/sdk/shapes:define-list receiver-responsibility-list :member
                               receiver-responsibility)

(smithy/sdk/shapes:define-input reject-engagement-invitation-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  engagement-invitation-arn-or-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (rejection-reason :target-type
                                  rejection-reason-string :member-name
                                  "RejectionReason"))
                                (:shape-name
                                 "RejectEngagementInvitationRequest"))

(smithy/sdk/shapes:define-type rejection-reason-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure related-entity-identifiers common-lisp:nil
                                    ((aws-marketplace-offers :target-type
                                      aws-marketplace-offer-identifiers
                                      :member-name "AwsMarketplaceOffers")
                                     (solutions :target-type
                                      solution-identifiers :member-name
                                      "Solutions")
                                     (aws-products :target-type
                                      aws-product-identifiers :member-name
                                      "AwsProducts"))
                                    (:shape-name "RelatedEntityIdentifiers"))

(smithy/sdk/shapes:define-enum related-entity-type
    common-lisp:nil
  (:solutions "Solutions")
  (:aws-products "AwsProducts")
  (:aws-marketplace-offers "AwsMarketplaceOffers"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

common-lisp:nil

(smithy/sdk/shapes:define-type resource-snapshot-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type resource-snapshot-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-snapshot-job-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-snapshot-job-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-snapshot-job-role-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-snapshot-job-status
    common-lisp:nil
  (:running "Running")
  (:stopped "Stopped"))

(smithy/sdk/shapes:define-structure resource-snapshot-job-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      resource-snapshot-job-identifier
                                      :member-name "Id")
                                     (arn :target-type
                                      resource-snapshot-job-arn :member-name
                                      "Arn")
                                     (engagement-id :target-type
                                      engagement-identifier :member-name
                                      "EngagementId")
                                     (status :target-type
                                      resource-snapshot-job-status :member-name
                                      "Status"))
                                    (:shape-name "ResourceSnapshotJobSummary"))

(smithy/sdk/shapes:define-list resource-snapshot-job-summary-list :member
                               resource-snapshot-job-summary)

(smithy/sdk/shapes:define-union resource-snapshot-payload common-lisp:nil
                                ((opportunity-summary :target-type
                                  opportunity-summary-view :member-name
                                  "OpportunitySummary"))
                                (:shape-name "ResourceSnapshotPayload"))

(smithy/sdk/shapes:define-type resource-snapshot-revision
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure resource-snapshot-summary common-lisp:nil
                                    ((arn :target-type resource-snapshot-arn
                                      :member-name "Arn")
                                     (revision :target-type
                                      resource-snapshot-revision :member-name
                                      "Revision")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-id :target-type
                                      resource-identifier :member-name
                                      "ResourceId")
                                     (resource-snapshot-template-name
                                      :target-type resource-template-name
                                      :member-name
                                      "ResourceSnapshotTemplateName")
                                     (created-by :target-type aws-account
                                      :member-name "CreatedBy"))
                                    (:shape-name "ResourceSnapshotSummary"))

(smithy/sdk/shapes:define-list resource-snapshot-summary-list :member
                               resource-snapshot-summary)

(smithy/sdk/shapes:define-type resource-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:opportunity "Opportunity"))

(smithy/sdk/shapes:define-enum revenue-model
    common-lisp:nil
  (:contract "Contract")
  (:pay-as-you-go "Pay-as-you-go")
  (:subscription "Subscription"))

(smithy/sdk/shapes:define-enum review-status
    common-lisp:nil
  (:pending-submission "Pending Submission")
  (:submitted "Submitted")
  (:in-review "In review")
  (:approved "Approved")
  (:rejected "Rejected")
  (:action-required "Action Required"))

(smithy/sdk/shapes:define-list sales-activities :member sales-activity)

(smithy/sdk/shapes:define-enum sales-activity
    common-lisp:nil
  (:initialized-discussions-with-customer
   "Initialized discussions with customer")
  (:customer-has-shown-interest "Customer has shown interest in solution")
  (:conducted-poc-demo "Conducted POC / Demo")
  (:in-evaluation-planning-stage "In evaluation / planning stage")
  (:agreed-on-solution-to-business-problem
   "Agreed on solution to Business Problem")
  (:completed-action-plan "Completed Action Plan")
  (:finalized-deployment-needs "Finalized Deployment Need")
  (:sow-signed "SOW Signed"))

(smithy/sdk/shapes:define-enum sales-involvement-type
    common-lisp:nil
  (:for-visibility-only "For Visibility Only")
  (:co-sell "Co-Sell"))

(smithy/sdk/shapes:define-structure sender-contact common-lisp:nil
                                    ((email :target-type sender-contact-email
                                      :required common-lisp:t :member-name
                                      "Email")
                                     (first-name :target-type name :member-name
                                      "FirstName")
                                     (last-name :target-type name :member-name
                                      "LastName")
                                     (business-title :target-type job-title
                                      :member-name "BusinessTitle")
                                     (phone :target-type phone-number
                                      :member-name "Phone"))
                                    (:shape-name "SenderContact"))

(smithy/sdk/shapes:define-type sender-contact-email
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sender-contact-list :member sender-contact)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure software-revenue common-lisp:nil
                                    ((delivery-model :target-type revenue-model
                                      :member-name "DeliveryModel")
                                     (value :target-type monetary-value
                                      :member-name "Value")
                                     (effective-date :target-type date
                                      :member-name "EffectiveDate")
                                     (expiration-date :target-type date
                                      :member-name "ExpirationDate"))
                                    (:shape-name "SoftwareRevenue"))

common-lisp:nil

(smithy/sdk/shapes:define-type solution-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure solution-base common-lisp:nil
                                    ((catalog :target-type catalog-identifier
                                      :required common-lisp:t :member-name
                                      "Catalog")
                                     (id :target-type solution-identifier
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (arn :target-type solution-arn
                                      :member-name "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type solution-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (category :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Category")
                                     (created-date :target-type date-time
                                      :required common-lisp:t :member-name
                                      "CreatedDate"))
                                    (:shape-name "SolutionBase"))

(smithy/sdk/shapes:define-type solution-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list solution-identifiers :member solution-identifier)

(smithy/sdk/shapes:define-list solution-list :member solution-base)

(smithy/sdk/shapes:define-structure solution-sort common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder")
                                     (sort-by :target-type solution-sort-name
                                      :required common-lisp:t :member-name
                                      "SortBy"))
                                    (:shape-name "SolutionSort"))

(smithy/sdk/shapes:define-enum solution-sort-name
    common-lisp:nil
  (:identifier "Identifier")
  (:name "Name")
  (:status "Status")
  (:category "Category")
  (:createddate "CreatedDate"))

(smithy/sdk/shapes:define-enum solution-status
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive")
  (:draft "Draft"))

(smithy/sdk/shapes:define-enum sort-by
    common-lisp:nil
  (:created-date "CreatedDate"))

(smithy/sdk/shapes:define-structure sort-object common-lisp:nil
                                    ((sort-by :target-type sort-by :member-name
                                      "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "SortObject"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-enum stage
    common-lisp:nil
  (:prospect "Prospect")
  (:qualified "Qualified")
  (:technical-validation "Technical Validation")
  (:business-validation "Business Validation")
  (:committed "Committed")
  (:launched "Launched")
  (:closed-lost "Closed Lost"))

(smithy/sdk/shapes:define-input
 start-engagement-by-accepting-invitation-task-request common-lisp:nil
 ((catalog :target-type catalog-identifier :required common-lisp:t :member-name
   "Catalog")
  (client-token :target-type client-token :required common-lisp:t :member-name
   "ClientToken")
  (identifier :target-type engagement-invitation-arn-or-identifier :required
   common-lisp:t :member-name "Identifier")
  (tags :target-type tag-list :member-name "Tags"))
 (:shape-name "StartEngagementByAcceptingInvitationTaskRequest"))

(smithy/sdk/shapes:define-output
 start-engagement-by-accepting-invitation-task-response common-lisp:nil
 ((task-id :target-type task-identifier :member-name "TaskId")
  (task-arn :target-type task-arn :member-name "TaskArn")
  (start-time :target-type date-time :member-name "StartTime")
  (task-status :target-type task-status :member-name "TaskStatus")
  (message :target-type smithy/sdk/smithy-types:string :member-name "Message")
  (reason-code :target-type reason-code :member-name "ReasonCode")
  (opportunity-id :target-type opportunity-identifier :member-name
   "OpportunityId")
  (resource-snapshot-job-id :target-type resource-snapshot-job-identifier
   :member-name "ResourceSnapshotJobId")
  (engagement-invitation-id :target-type engagement-invitation-identifier
   :member-name "EngagementInvitationId"))
 (:shape-name "StartEngagementByAcceptingInvitationTaskResponse"))

(smithy/sdk/shapes:define-input start-engagement-from-opportunity-task-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name "Identifier")
                                 (aws-submission :target-type aws-submission
                                  :required common-lisp:t :member-name
                                  "AwsSubmission")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartEngagementFromOpportunityTaskRequest"))

(smithy/sdk/shapes:define-output
 start-engagement-from-opportunity-task-response common-lisp:nil
 ((task-id :target-type task-identifier :member-name "TaskId")
  (task-arn :target-type task-arn :member-name "TaskArn")
  (start-time :target-type date-time :member-name "StartTime")
  (task-status :target-type task-status :member-name "TaskStatus")
  (message :target-type smithy/sdk/smithy-types:string :member-name "Message")
  (reason-code :target-type reason-code :member-name "ReasonCode")
  (opportunity-id :target-type opportunity-identifier :member-name
   "OpportunityId")
  (resource-snapshot-job-id :target-type resource-snapshot-job-identifier
   :member-name "ResourceSnapshotJobId")
  (engagement-id :target-type engagement-identifier :member-name
   "EngagementId")
  (engagement-invitation-id :target-type engagement-invitation-identifier
   :member-name "EngagementInvitationId"))
 (:shape-name "StartEngagementFromOpportunityTaskResponse"))

(smithy/sdk/shapes:define-input start-resource-snapshot-job-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (resource-snapshot-job-identifier :target-type
                                  resource-snapshot-job-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotJobIdentifier"))
                                (:shape-name "StartResourceSnapshotJobRequest"))

(smithy/sdk/shapes:define-input stop-resource-snapshot-job-request
                                common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (resource-snapshot-job-identifier :target-type
                                  resource-snapshot-job-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceSnapshotJobIdentifier"))
                                (:shape-name "StopResourceSnapshotJobRequest"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input submit-opportunity-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name "Identifier")
                                 (involvement-type :target-type
                                  sales-involvement-type :required
                                  common-lisp:t :member-name "InvolvementType")
                                 (visibility :target-type visibility
                                  :member-name "Visibility"))
                                (:shape-name "SubmitOpportunityRequest"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-arn-or-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list task-identifiers :member task-arn-or-identifier)

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list task-statuses :member task-status)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-opportunity-request common-lisp:nil
                                ((catalog :target-type catalog-identifier
                                  :required common-lisp:t :member-name
                                  "Catalog")
                                 (primary-needs-from-aws :target-type
                                  primary-needs-from-aws :member-name
                                  "PrimaryNeedsFromAws")
                                 (national-security :target-type
                                  national-security :member-name
                                  "NationalSecurity")
                                 (partner-opportunity-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "PartnerOpportunityIdentifier")
                                 (customer :target-type customer :member-name
                                  "Customer")
                                 (project :target-type project :member-name
                                  "Project")
                                 (opportunity-type :target-type
                                  opportunity-type :member-name
                                  "OpportunityType")
                                 (marketing :target-type marketing :member-name
                                  "Marketing")
                                 (software-revenue :target-type
                                  software-revenue :member-name
                                  "SoftwareRevenue")
                                 (last-modified-date :target-type date-time
                                  :required common-lisp:t :member-name
                                  "LastModifiedDate")
                                 (identifier :target-type
                                  opportunity-identifier :required
                                  common-lisp:t :member-name "Identifier")
                                 (life-cycle :target-type life-cycle
                                  :member-name "LifeCycle"))
                                (:shape-name "UpdateOpportunityRequest"))

(smithy/sdk/shapes:define-output update-opportunity-response common-lisp:nil
                                 ((id :target-type opportunity-identifier
                                   :required common-lisp:t :member-name "Id")
                                  (last-modified-date :target-type date-time
                                   :required common-lisp:t :member-name
                                   "LastModifiedDate"))
                                 (:shape-name "UpdateOpportunityResponse"))

(smithy/sdk/shapes:define-list use-cases :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "Reason")
                                 (error-list :target-type
                                  validation-exception-error-list :member-name
                                  "ErrorList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-error common-lisp:nil
                                    ((field-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "FieldName")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Message")
                                     (code :target-type
                                      validation-exception-error-code :required
                                      common-lisp:t :member-name "Code"))
                                    (:shape-name "ValidationExceptionError"))

(smithy/sdk/shapes:define-enum validation-exception-error-code
    common-lisp:nil
  (:required-field-missing "REQUIRED_FIELD_MISSING")
  (:invalid-enum-value "INVALID_ENUM_VALUE")
  (:invalid-string-format "INVALID_STRING_FORMAT")
  (:invalid-value "INVALID_VALUE")
  (:too-many-values "TOO_MANY_VALUES")
  (:invalid-resource-state "INVALID_RESOURCE_STATE")
  (:duplicate-key-value "DUPLICATE_KEY_VALUE")
  (:value-out-of-range "VALUE_OUT_OF_RANGE")
  (:action-not-permitted "ACTION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-list validation-exception-error-list :member
                               validation-exception-error)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:request-validation-failed "REQUEST_VALIDATION_FAILED")
  (:business-validation-failed "BUSINESS_VALIDATION_FAILED"))

(smithy/sdk/shapes:define-enum visibility
    common-lisp:nil
  (:full "Full")
  (:limited "Limited"))

(smithy/sdk/shapes:define-type website-url smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation accept-engagement-invitation :shape-name
                                       "AcceptEngagementInvitation" :input
                                       accept-engagement-invitation-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/AcceptEngagementInvitation" :code 200)

(smithy/sdk/operation:define-operation assign-opportunity :shape-name
                                       "AssignOpportunity" :input
                                       assign-opportunity-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/AssignOpportunity"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-opportunity :shape-name
                                       "AssociateOpportunity" :input
                                       associate-opportunity-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/AssociateOpportunity" :code 200)

(smithy/sdk/operation:define-operation create-engagement :shape-name
                                       "CreateEngagement" :input
                                       create-engagement-request :output
                                       create-engagement-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateEngagement"
                                       :code 200)

(smithy/sdk/operation:define-operation create-engagement-invitation :shape-name
                                       "CreateEngagementInvitation" :input
                                       create-engagement-invitation-request
                                       :output
                                       create-engagement-invitation-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateEngagementInvitation" :code 200)

(smithy/sdk/operation:define-operation create-opportunity :shape-name
                                       "CreateOpportunity" :input
                                       create-opportunity-request :output
                                       create-opportunity-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateOpportunity"
                                       :code 200)

(smithy/sdk/operation:define-operation create-resource-snapshot :shape-name
                                       "CreateResourceSnapshot" :input
                                       create-resource-snapshot-request :output
                                       create-resource-snapshot-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateResourceSnapshot" :code 200)

(smithy/sdk/operation:define-operation create-resource-snapshot-job :shape-name
                                       "CreateResourceSnapshotJob" :input
                                       create-resource-snapshot-job-request
                                       :output
                                       create-resource-snapshot-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateResourceSnapshotJob" :code 200)

(smithy/sdk/operation:define-operation delete-resource-snapshot-job :shape-name
                                       "DeleteResourceSnapshotJob" :input
                                       delete-resource-snapshot-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteResourceSnapshotJob" :code 204)

(smithy/sdk/operation:define-operation disassociate-opportunity :shape-name
                                       "DisassociateOpportunity" :input
                                       disassociate-opportunity-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DisassociateOpportunity" :code 200)

(smithy/sdk/operation:define-operation get-aws-opportunity-summary :shape-name
                                       "GetAwsOpportunitySummary" :input
                                       get-aws-opportunity-summary-request
                                       :output
                                       get-aws-opportunity-summary-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetAwsOpportunitySummary" :code 200)

(smithy/sdk/operation:define-operation get-engagement :shape-name
                                       "GetEngagement" :input
                                       get-engagement-request :output
                                       get-engagement-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetEngagement"
                                       :code 200)

(smithy/sdk/operation:define-operation get-engagement-invitation :shape-name
                                       "GetEngagementInvitation" :input
                                       get-engagement-invitation-request
                                       :output
                                       get-engagement-invitation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetEngagementInvitation" :code 200)

(smithy/sdk/operation:define-operation get-opportunity :shape-name
                                       "GetOpportunity" :input
                                       get-opportunity-request :output
                                       get-opportunity-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetOpportunity"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-snapshot :shape-name
                                       "GetResourceSnapshot" :input
                                       get-resource-snapshot-request :output
                                       get-resource-snapshot-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetResourceSnapshot" :code 200)

(smithy/sdk/operation:define-operation get-resource-snapshot-job :shape-name
                                       "GetResourceSnapshotJob" :input
                                       get-resource-snapshot-job-request
                                       :output
                                       get-resource-snapshot-job-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetResourceSnapshotJob" :code 200)

(smithy/sdk/operation:define-operation get-selling-system-settings :shape-name
                                       "GetSellingSystemSettings" :input
                                       get-selling-system-settings-request
                                       :output
                                       get-selling-system-settings-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetSellingSystemSettings" :code 200)

(smithy/sdk/operation:define-operation
 list-engagement-by-accepting-invitation-tasks :shape-name
 "ListEngagementByAcceptingInvitationTasks" :input
 list-engagement-by-accepting-invitation-tasks-request :output
 list-engagement-by-accepting-invitation-tasks-response :errors
 (access-denied-exception resource-not-found-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/ListEngagementByAcceptingInvitationTasks" :code 200)

(smithy/sdk/operation:define-operation list-engagement-from-opportunity-tasks
                                       :shape-name
                                       "ListEngagementFromOpportunityTasks"
                                       :input
                                       list-engagement-from-opportunity-tasks-request
                                       :output
                                       list-engagement-from-opportunity-tasks-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListEngagementFromOpportunityTasks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-engagement-invitations :shape-name
                                       "ListEngagementInvitations" :input
                                       list-engagement-invitations-request
                                       :output
                                       list-engagement-invitations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListEngagementInvitations" :code 200)

(smithy/sdk/operation:define-operation list-engagement-members :shape-name
                                       "ListEngagementMembers" :input
                                       list-engagement-members-request :output
                                       list-engagement-members-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListEngagementMembers" :code 200)

(smithy/sdk/operation:define-operation list-engagement-resource-associations
                                       :shape-name
                                       "ListEngagementResourceAssociations"
                                       :input
                                       list-engagement-resource-associations-request
                                       :output
                                       list-engagement-resource-associations-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListEngagementResourceAssociations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-engagements :shape-name
                                       "ListEngagements" :input
                                       list-engagements-request :output
                                       list-engagements-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListEngagements"
                                       :code 200)

(smithy/sdk/operation:define-operation list-opportunities :shape-name
                                       "ListOpportunities" :input
                                       list-opportunities-request :output
                                       list-opportunities-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListOpportunities"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resource-snapshot-jobs :shape-name
                                       "ListResourceSnapshotJobs" :input
                                       list-resource-snapshot-jobs-request
                                       :output
                                       list-resource-snapshot-jobs-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListResourceSnapshotJobs" :code 200)

(smithy/sdk/operation:define-operation list-resource-snapshots :shape-name
                                       "ListResourceSnapshots" :input
                                       list-resource-snapshots-request :output
                                       list-resource-snapshots-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListResourceSnapshots" :code 200)

(smithy/sdk/operation:define-operation list-solutions :shape-name
                                       "ListSolutions" :input
                                       list-solutions-request :output
                                       list-solutions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListSolutions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTagsForResource" :code 200)

(smithy/sdk/operation:define-operation put-selling-system-settings :shape-name
                                       "PutSellingSystemSettings" :input
                                       put-selling-system-settings-request
                                       :output
                                       put-selling-system-settings-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/PutSellingSystemSettings" :code 200)

(smithy/sdk/operation:define-operation reject-engagement-invitation :shape-name
                                       "RejectEngagementInvitation" :input
                                       reject-engagement-invitation-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/RejectEngagementInvitation" :code 200)

(smithy/sdk/operation:define-operation
 start-engagement-by-accepting-invitation-task :shape-name
 "StartEngagementByAcceptingInvitationTask" :input
 start-engagement-by-accepting-invitation-task-request :output
 start-engagement-by-accepting-invitation-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/StartEngagementByAcceptingInvitationTask" :code 200)

(smithy/sdk/operation:define-operation start-engagement-from-opportunity-task
                                       :shape-name
                                       "StartEngagementFromOpportunityTask"
                                       :input
                                       start-engagement-from-opportunity-task-request
                                       :output
                                       start-engagement-from-opportunity-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartEngagementFromOpportunityTask"
                                       :code 200)

(smithy/sdk/operation:define-operation start-resource-snapshot-job :shape-name
                                       "StartResourceSnapshotJob" :input
                                       start-resource-snapshot-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartResourceSnapshotJob" :code 204)

(smithy/sdk/operation:define-operation stop-resource-snapshot-job :shape-name
                                       "StopResourceSnapshotJob" :input
                                       stop-resource-snapshot-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StopResourceSnapshotJob" :code 204)

(smithy/sdk/operation:define-operation submit-opportunity :shape-name
                                       "SubmitOpportunity" :input
                                       submit-opportunity-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/SubmitOpportunity"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/TagResource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/UntagResource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-opportunity :shape-name
                                       "UpdateOpportunity" :input
                                       update-opportunity-request :output
                                       update-opportunity-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateOpportunity"
                                       :code 200)
