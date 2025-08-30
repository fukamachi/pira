(uiop/package:define-package #:pira/marketplace-commerce-analytics (:use)
                             (:export #:customer-defined-values
                              #:data-set-publication-date #:data-set-request-id
                              #:data-set-type #:destination-s3bucket-name
                              #:destination-s3prefix #:exception-message
                              #:from-date #:generate-data-set
                              #:marketplace-commerce-analytics20150701
                              #:marketplace-commerce-analytics-exception
                              #:optional-key #:optional-value #:role-name-arn
                              #:sns-topic-arn #:start-support-data-export
                              #:support-data-set-type
                              #:marketplace-commerce-analytics-error))
(common-lisp:in-package #:pira/marketplace-commerce-analytics)

(common-lisp:define-condition marketplace-commerce-analytics-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service marketplace-commerce-analytics20150701
                                   :shape-name
                                   "MarketplaceCommerceAnalytics20150701"
                                   :version "2015-07-01" :title
                                   "AWS Marketplace Commerce Analytics"
                                   :operations
                                   '(generate-data-set
                                     start-support-data-export)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Marketplace Commerce Analytics")
                                      ("arnNamespace"
                                       . "marketplacecommerceanalytics")
                                      ("cloudFormationName"
                                       . "MarketplaceCommerceAnalytics")
                                      ("cloudTrailEventSource"
                                       . "marketplacecommerceanalytics.amazonaws.com")
                                      ("docId"
                                       . "marketplacecommerceanalytics-2015-07-01")
                                      ("endpointPrefix"
                                       . "marketplacecommerceanalytics"))
                                     ("aws.auth#sigv4"
                                      ("name"
                                       . "marketplacecommerceanalytics"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-map customer-defined-values :key optional-key :value
                              optional-value)

(smithy/sdk/shapes:define-type data-set-publication-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type data-set-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-set-type
    common-lisp:nil
  (:customer-subscriber-hourly-monthly-subscriptions
   "customer_subscriber_hourly_monthly_subscriptions")
  (:customer-subscriber-annual-subscriptions
   "customer_subscriber_annual_subscriptions")
  (:daily-business-usage-by-instance-type
   "daily_business_usage_by_instance_type")
  (:daily-business-fees "daily_business_fees")
  (:daily-business-free-trial-conversions
   "daily_business_free_trial_conversions")
  (:daily-business-new-instances "daily_business_new_instances")
  (:daily-business-new-product-subscribers
   "daily_business_new_product_subscribers")
  (:daily-business-canceled-product-subscribers
   "daily_business_canceled_product_subscribers")
  (:monthly-revenue-billing-and-revenue-data
   "monthly_revenue_billing_and_revenue_data")
  (:monthly-revenue-annual-subscriptions "monthly_revenue_annual_subscriptions")
  (:monthly-revenue-field-demonstration-usage
   "monthly_revenue_field_demonstration_usage")
  (:monthly-revenue-flexible-payment-schedule
   "monthly_revenue_flexible_payment_schedule")
  (:disbursed-amount-by-product "disbursed_amount_by_product")
  (:disbursed-amount-by-product-with-uncollected-funds
   "disbursed_amount_by_product_with_uncollected_funds")
  (:disbursed-amount-by-instance-hours "disbursed_amount_by_instance_hours")
  (:disbursed-amount-by-customer-geo "disbursed_amount_by_customer_geo")
  (:disbursed-amount-by-age-of-uncollected-funds
   "disbursed_amount_by_age_of_uncollected_funds")
  (:disbursed-amount-by-age-of-disbursed-funds
   "disbursed_amount_by_age_of_disbursed_funds")
  (:disbursed-amount-by-age-of-past-due-funds
   "disbursed_amount_by_age_of_past_due_funds")
  (:disbursed-amount-by-uncollected-funds-breakdown
   "disbursed_amount_by_uncollected_funds_breakdown")
  (:customer-profile-by-industry "customer_profile_by_industry")
  (:customer-profile-by-revenue "customer_profile_by_revenue")
  (:customer-profile-by-geography "customer_profile_by_geography")
  (:sales-compensation-billed-revenue "sales_compensation_billed_revenue")
  (:us-sales-and-use-tax-records "us_sales_and_use_tax_records"))

(smithy/sdk/shapes:define-type destination-s3bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-s3prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type from-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input generate-data-set-request common-lisp:nil
                                ((data-set-type :target-type data-set-type
                                  :required common-lisp:t :member-name
                                  "dataSetType")
                                 (data-set-publication-date :target-type
                                  data-set-publication-date :required
                                  common-lisp:t :member-name
                                  "dataSetPublicationDate")
                                 (role-name-arn :target-type role-name-arn
                                  :required common-lisp:t :member-name
                                  "roleNameArn")
                                 (destination-s3bucket-name :target-type
                                  destination-s3bucket-name :required
                                  common-lisp:t :member-name
                                  "destinationS3BucketName")
                                 (destination-s3prefix :target-type
                                  destination-s3prefix :member-name
                                  "destinationS3Prefix")
                                 (sns-topic-arn :target-type sns-topic-arn
                                  :required common-lisp:t :member-name
                                  "snsTopicArn")
                                 (customer-defined-values :target-type
                                  customer-defined-values :member-name
                                  "customerDefinedValues"))
                                (:shape-name "GenerateDataSetRequest"))

(smithy/sdk/shapes:define-output generate-data-set-result common-lisp:nil
                                 ((data-set-request-id :target-type
                                   data-set-request-id :member-name
                                   "dataSetRequestId"))
                                 (:shape-name "GenerateDataSetResult"))

(smithy/sdk/shapes:define-error marketplace-commerce-analytics-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "MarketplaceCommerceAnalyticsException")
                                (:error-code 500)
                                (:base-class
                                 marketplace-commerce-analytics-error))

(smithy/sdk/shapes:define-type optional-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-name-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-support-data-export-request
                                common-lisp:nil
                                ((data-set-type :target-type
                                  support-data-set-type :required common-lisp:t
                                  :member-name "dataSetType")
                                 (from-date :target-type from-date :required
                                  common-lisp:t :member-name "fromDate")
                                 (role-name-arn :target-type role-name-arn
                                  :required common-lisp:t :member-name
                                  "roleNameArn")
                                 (destination-s3bucket-name :target-type
                                  destination-s3bucket-name :required
                                  common-lisp:t :member-name
                                  "destinationS3BucketName")
                                 (destination-s3prefix :target-type
                                  destination-s3prefix :member-name
                                  "destinationS3Prefix")
                                 (sns-topic-arn :target-type sns-topic-arn
                                  :required common-lisp:t :member-name
                                  "snsTopicArn")
                                 (customer-defined-values :target-type
                                  customer-defined-values :member-name
                                  "customerDefinedValues"))
                                (:shape-name "StartSupportDataExportRequest"))

(smithy/sdk/shapes:define-output start-support-data-export-result
                                 common-lisp:nil
                                 ((data-set-request-id :target-type
                                   data-set-request-id :member-name
                                   "dataSetRequestId"))
                                 (:shape-name "StartSupportDataExportResult"))

(smithy/sdk/shapes:define-enum support-data-set-type
    common-lisp:nil
  (:customer-support-contacts-data "customer_support_contacts_data")
  (:test-customer-support-contacts-data "test_customer_support_contacts_data"))

(smithy/sdk/operation:define-operation generate-data-set :shape-name
                                       "GenerateDataSet" :input
                                       generate-data-set-request :output
                                       generate-data-set-result :errors
                                       (marketplace-commerce-analytics-exception))

(smithy/sdk/operation:define-operation start-support-data-export :shape-name
                                       "StartSupportDataExport" :input
                                       start-support-data-export-request
                                       :output start-support-data-export-result
                                       :errors
                                       (marketplace-commerce-analytics-exception))
