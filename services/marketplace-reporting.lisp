(uiop/package:define-package #:pira/marketplace-reporting (:use)
                             (:export #:awsmarketplace-reporting #:dashboard
                              #:dashboard-identifier #:embedding-domain
                              #:embedding-domains #:get-buyer-dashboard))
(common-lisp:in-package #:pira/marketplace-reporting)

(smithy/sdk/service:define-service awsmarketplace-reporting :shape-name
                                   "AWSMarketplaceReporting" :version
                                   "2018-05-10" :title
                                   "AWS Marketplace Reporting Service"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Marketplace Reporting")
                                      ("cloudTrailEventSource"
                                       . "reporting-marketplace.amazonaws.com")
                                      ("arnNamespace" . "aws-marketplace")
                                      ("endpointPrefix"
                                       . "reporting-marketplace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "aws-marketplace"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

common-lisp:nil

(smithy/sdk/shapes:define-type dashboard-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type embedding-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list embedding-domains :member embedding-domain)

(smithy/sdk/shapes:define-input get-buyer-dashboard-input common-lisp:nil
                                ((dashboard-identifier :target-type
                                  dashboard-identifier :required common-lisp:t
                                  :member-name "dashboardIdentifier")
                                 (embedding-domains :target-type
                                  embedding-domains :required common-lisp:t
                                  :member-name "embeddingDomains"))
                                (:shape-name "GetBuyerDashboardInput"))

(smithy/sdk/shapes:define-output get-buyer-dashboard-output common-lisp:nil
                                 ((embed-url :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "embedUrl")
                                  (dashboard-identifier :target-type
                                   dashboard-identifier :required common-lisp:t
                                   :member-name "dashboardIdentifier")
                                  (embedding-domains :target-type
                                   embedding-domains :required common-lisp:t
                                   :member-name "embeddingDomains"))
                                 (:shape-name "GetBuyerDashboardOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/operation:define-operation get-buyer-dashboard :shape-name
                                       "GetBuyerDashboard" :input
                                       get-buyer-dashboard-input :output
                                       get-buyer-dashboard-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/getBuyerDashboard"
                                       :code 200)
