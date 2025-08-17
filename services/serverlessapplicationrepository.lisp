(uiop/package:define-package #:pira/serverlessapplicationrepository (:use)
                             (:export #:application-dependency-summary
                              #:application-policy-statement
                              #:application-summary #:capability
                              #:create-application #:create-application-version
                              #:create-cloud-formation-change-set
                              #:create-cloud-formation-template
                              #:delete-application #:get-application
                              #:get-application-policy
                              #:get-cloud-formation-template
                              #:list-application-dependencies
                              #:list-application-versions #:list-applications
                              #:max-items #:parameter-definition
                              #:parameter-value #:put-application-policy
                              #:rollback-configuration #:rollback-trigger
                              #:serverless-application-repository #:status
                              #:tag #:unshare-application #:update-application
                              #:version #:version-summary #:boolean #:integer
                              #:list-of-application-dependency-summary
                              #:list-of-application-policy-statement
                              #:list-of-application-summary
                              #:list-of-capability
                              #:list-of-parameter-definition
                              #:list-of-parameter-value
                              #:list-of-rollback-trigger #:list-of-tag
                              #:list-of-version-summary #:list-of-string
                              #:string))
(common-lisp:in-package #:pira/serverlessapplicationrepository)

(smithy/sdk/service:define-service serverless-application-repository
                                   :shape-name
                                   "ServerlessApplicationRepository" :version
                                   "2017-09-08" :title
                                   "AWSServerlessApplicationRepository"
                                   :operations
                                   '(create-application
                                     create-application-version
                                     create-cloud-formation-change-set
                                     create-cloud-formation-template
                                     delete-application get-application
                                     get-application-policy
                                     get-cloud-formation-template
                                     list-application-dependencies
                                     list-applications
                                     list-application-versions
                                     put-application-policy unshare-application
                                     update-application)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "ServerlessApplicationRepository")
                                      ("arnNamespace" . "serverlessrepo")
                                      ("cloudFormationName"
                                       . "ServerlessApplicationRepository")
                                      ("cloudTrailEventSource"
                                       . "serverlessapplicationrepository.amazonaws.com")
                                      ("docId" . "serverlessrepo-2017-09-08")
                                      ("endpointPrefix" . "serverlessrepo"))
                                     ("aws.auth#sigv4"
                                      ("name" . "serverlessrepo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure application-dependency-summary
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId" :json-name
                                      "applicationId")
                                     (semantic-version :target-type string
                                      :required common-lisp:t :member-name
                                      "SemanticVersion" :json-name
                                      "semanticVersion"))
                                    (:shape-name
                                     "ApplicationDependencySummary"))

(smithy/sdk/shapes:define-structure application-policy-statement
                                    common-lisp:nil
                                    ((actions :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Actions" :json-name "actions")
                                     (principal-org-ids :target-type
                                      list-of-string :member-name
                                      "PrincipalOrgIDs" :json-name
                                      "principalOrgIDs")
                                     (principals :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Principals" :json-name "principals")
                                     (statement-id :target-type string
                                      :member-name "StatementId" :json-name
                                      "statementId"))
                                    (:shape-name "ApplicationPolicyStatement"))

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId" :json-name
                                      "applicationId")
                                     (author :target-type string :required
                                      common-lisp:t :member-name "Author"
                                      :json-name "author")
                                     (creation-time :target-type string
                                      :member-name "CreationTime" :json-name
                                      "creationTime")
                                     (description :target-type string :required
                                      common-lisp:t :member-name "Description"
                                      :json-name "description")
                                     (home-page-url :target-type string
                                      :member-name "HomePageUrl" :json-name
                                      "homePageUrl")
                                     (labels :target-type list-of-string
                                      :member-name "Labels" :json-name
                                      "labels")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (spdx-license-id :target-type string
                                      :member-name "SpdxLicenseId" :json-name
                                      "spdxLicenseId"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode" :json-name "errorCode")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum capability
    common-lisp:nil
  (:capability-iam "CAPABILITY_IAM")
  (:capability-named-iam "CAPABILITY_NAMED_IAM")
  (:capability-auto-expand "CAPABILITY_AUTO_EXPAND")
  (:capability-resource-policy "CAPABILITY_RESOURCE_POLICY"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode" :json-name "errorCode")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((author :target-type string :required
                                  common-lisp:t :member-name "Author"
                                  :json-name "author")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description"
                                  :json-name "description")
                                 (home-page-url :target-type string
                                  :member-name "HomePageUrl" :json-name
                                  "homePageUrl")
                                 (labels :target-type list-of-string
                                  :member-name "Labels" :json-name "labels")
                                 (license-body :target-type string :member-name
                                  "LicenseBody" :json-name "licenseBody")
                                 (license-url :target-type string :member-name
                                  "LicenseUrl" :json-name "licenseUrl")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (readme-body :target-type string :member-name
                                  "ReadmeBody" :json-name "readmeBody")
                                 (readme-url :target-type string :member-name
                                  "ReadmeUrl" :json-name "readmeUrl")
                                 (semantic-version :target-type string
                                  :member-name "SemanticVersion" :json-name
                                  "semanticVersion")
                                 (source-code-archive-url :target-type string
                                  :member-name "SourceCodeArchiveUrl"
                                  :json-name "sourceCodeArchiveUrl")
                                 (source-code-url :target-type string
                                  :member-name "SourceCodeUrl" :json-name
                                  "sourceCodeUrl")
                                 (spdx-license-id :target-type string
                                  :member-name "SpdxLicenseId" :json-name
                                  "spdxLicenseId")
                                 (template-body :target-type string
                                  :member-name "TemplateBody" :json-name
                                  "templateBody")
                                 (template-url :target-type string :member-name
                                  "TemplateUrl" :json-name "templateUrl"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (author :target-type string :member-name
                                   "Author" :json-name "author")
                                  (creation-time :target-type string
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (home-page-url :target-type string
                                   :member-name "HomePageUrl" :json-name
                                   "homePageUrl")
                                  (is-verified-author :target-type boolean
                                   :member-name "IsVerifiedAuthor" :json-name
                                   "isVerifiedAuthor")
                                  (labels :target-type list-of-string
                                   :member-name "Labels" :json-name "labels")
                                  (license-url :target-type string :member-name
                                   "LicenseUrl" :json-name "licenseUrl")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (readme-url :target-type string :member-name
                                   "ReadmeUrl" :json-name "readmeUrl")
                                  (spdx-license-id :target-type string
                                   :member-name "SpdxLicenseId" :json-name
                                   "spdxLicenseId")
                                  (verified-author-url :target-type string
                                   :member-name "VerifiedAuthorUrl" :json-name
                                   "verifiedAuthorUrl")
                                  (version :target-type version :member-name
                                   "Version" :json-name "version"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-application-version-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (semantic-version :target-type string
                                  :required common-lisp:t :member-name
                                  "SemanticVersion" :http-label common-lisp:t)
                                 (source-code-archive-url :target-type string
                                  :member-name "SourceCodeArchiveUrl"
                                  :json-name "sourceCodeArchiveUrl")
                                 (source-code-url :target-type string
                                  :member-name "SourceCodeUrl" :json-name
                                  "sourceCodeUrl")
                                 (template-body :target-type string
                                  :member-name "TemplateBody" :json-name
                                  "templateBody")
                                 (template-url :target-type string :member-name
                                  "TemplateUrl" :json-name "templateUrl"))
                                (:shape-name "CreateApplicationVersionRequest"))

(smithy/sdk/shapes:define-output create-application-version-response
                                 common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (creation-time :target-type string
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (parameter-definitions :target-type
                                   list-of-parameter-definition :member-name
                                   "ParameterDefinitions" :json-name
                                   "parameterDefinitions")
                                  (required-capabilities :target-type
                                   list-of-capability :member-name
                                   "RequiredCapabilities" :json-name
                                   "requiredCapabilities")
                                  (resources-supported :target-type boolean
                                   :member-name "ResourcesSupported" :json-name
                                   "resourcesSupported")
                                  (semantic-version :target-type string
                                   :member-name "SemanticVersion" :json-name
                                   "semanticVersion")
                                  (source-code-archive-url :target-type string
                                   :member-name "SourceCodeArchiveUrl"
                                   :json-name "sourceCodeArchiveUrl")
                                  (source-code-url :target-type string
                                   :member-name "SourceCodeUrl" :json-name
                                   "sourceCodeUrl")
                                  (template-url :target-type string
                                   :member-name "TemplateUrl" :json-name
                                   "templateUrl"))
                                 (:shape-name
                                  "CreateApplicationVersionResponse"))

(smithy/sdk/shapes:define-input create-cloud-formation-change-set-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (capabilities :target-type list-of-string
                                  :member-name "Capabilities" :json-name
                                  "capabilities")
                                 (change-set-name :target-type string
                                  :member-name "ChangeSetName" :json-name
                                  "changeSetName")
                                 (client-token :target-type string :member-name
                                  "ClientToken" :json-name "clientToken")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (notification-arns :target-type list-of-string
                                  :member-name "NotificationArns" :json-name
                                  "notificationArns")
                                 (parameter-overrides :target-type
                                  list-of-parameter-value :member-name
                                  "ParameterOverrides" :json-name
                                  "parameterOverrides")
                                 (resource-types :target-type list-of-string
                                  :member-name "ResourceTypes" :json-name
                                  "resourceTypes")
                                 (rollback-configuration :target-type
                                  rollback-configuration :member-name
                                  "RollbackConfiguration" :json-name
                                  "rollbackConfiguration")
                                 (semantic-version :target-type string
                                  :member-name "SemanticVersion" :json-name
                                  "semanticVersion")
                                 (stack-name :target-type string :required
                                  common-lisp:t :member-name "StackName"
                                  :json-name "stackName")
                                 (tags :target-type list-of-tag :member-name
                                  "Tags" :json-name "tags")
                                 (template-id :target-type string :member-name
                                  "TemplateId" :json-name "templateId"))
                                (:shape-name
                                 "CreateCloudFormationChangeSetRequest"))

(smithy/sdk/shapes:define-output create-cloud-formation-change-set-response
                                 common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (change-set-id :target-type string
                                   :member-name "ChangeSetId" :json-name
                                   "changeSetId")
                                  (semantic-version :target-type string
                                   :member-name "SemanticVersion" :json-name
                                   "semanticVersion")
                                  (stack-id :target-type string :member-name
                                   "StackId" :json-name "stackId"))
                                 (:shape-name
                                  "CreateCloudFormationChangeSetResponse"))

(smithy/sdk/shapes:define-input create-cloud-formation-template-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (semantic-version :target-type string
                                  :member-name "SemanticVersion" :json-name
                                  "semanticVersion"))
                                (:shape-name
                                 "CreateCloudFormationTemplateRequest"))

(smithy/sdk/shapes:define-output create-cloud-formation-template-response
                                 common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (creation-time :target-type string
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (expiration-time :target-type string
                                   :member-name "ExpirationTime" :json-name
                                   "expirationTime")
                                  (semantic-version :target-type string
                                   :member-name "SemanticVersion" :json-name
                                   "semanticVersion")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status")
                                  (template-id :target-type string :member-name
                                   "TemplateId" :json-name "templateId")
                                  (template-url :target-type string
                                   :member-name "TemplateUrl" :json-name
                                   "templateUrl"))
                                 (:shape-name
                                  "CreateCloudFormationTemplateResponse"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode" :json-name "errorCode")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-application-policy-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApplicationPolicyRequest"))

(smithy/sdk/shapes:define-output get-application-policy-response
                                 common-lisp:nil
                                 ((statements :target-type
                                   list-of-application-policy-statement
                                   :member-name "Statements" :json-name
                                   "statements"))
                                 (:shape-name "GetApplicationPolicyResponse"))

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (semantic-version :target-type string
                                  :member-name "SemanticVersion" :http-query
                                  "semanticVersion"))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-output get-application-response common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (author :target-type string :member-name
                                   "Author" :json-name "author")
                                  (creation-time :target-type string
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (home-page-url :target-type string
                                   :member-name "HomePageUrl" :json-name
                                   "homePageUrl")
                                  (is-verified-author :target-type boolean
                                   :member-name "IsVerifiedAuthor" :json-name
                                   "isVerifiedAuthor")
                                  (labels :target-type list-of-string
                                   :member-name "Labels" :json-name "labels")
                                  (license-url :target-type string :member-name
                                   "LicenseUrl" :json-name "licenseUrl")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (readme-url :target-type string :member-name
                                   "ReadmeUrl" :json-name "readmeUrl")
                                  (spdx-license-id :target-type string
                                   :member-name "SpdxLicenseId" :json-name
                                   "spdxLicenseId")
                                  (verified-author-url :target-type string
                                   :member-name "VerifiedAuthorUrl" :json-name
                                   "verifiedAuthorUrl")
                                  (version :target-type version :member-name
                                   "Version" :json-name "version"))
                                 (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-input get-cloud-formation-template-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (template-id :target-type string :required
                                  common-lisp:t :member-name "TemplateId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCloudFormationTemplateRequest"))

(smithy/sdk/shapes:define-output get-cloud-formation-template-response
                                 common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (creation-time :target-type string
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (expiration-time :target-type string
                                   :member-name "ExpirationTime" :json-name
                                   "expirationTime")
                                  (semantic-version :target-type string
                                   :member-name "SemanticVersion" :json-name
                                   "semanticVersion")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status")
                                  (template-id :target-type string :member-name
                                   "TemplateId" :json-name "templateId")
                                  (template-url :target-type string
                                   :member-name "TemplateUrl" :json-name
                                   "templateUrl"))
                                 (:shape-name
                                  "GetCloudFormationTemplateResponse"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode" :json-name "errorCode")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-application-dependencies-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "maxItems")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (semantic-version :target-type string
                                  :member-name "SemanticVersion" :http-query
                                  "semanticVersion"))
                                (:shape-name
                                 "ListApplicationDependenciesRequest"))

(smithy/sdk/shapes:define-output list-application-dependencies-response
                                 common-lisp:nil
                                 ((dependencies :target-type
                                   list-of-application-dependency-summary
                                   :member-name "Dependencies" :json-name
                                   "dependencies")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListApplicationDependenciesResponse"))

(smithy/sdk/shapes:define-input list-application-versions-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "maxItems")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListApplicationVersionsRequest"))

(smithy/sdk/shapes:define-output list-application-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (versions :target-type
                                   list-of-version-summary :member-name
                                   "Versions" :json-name "versions"))
                                 (:shape-name
                                  "ListApplicationVersionsResponse"))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "maxItems")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((applications :target-type
                                   list-of-application-summary :member-name
                                   "Applications" :json-name "applications")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode" :json-name "errorCode")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure parameter-definition common-lisp:nil
                                    ((allowed-pattern :target-type string
                                      :member-name "AllowedPattern" :json-name
                                      "allowedPattern")
                                     (allowed-values :target-type
                                      list-of-string :member-name
                                      "AllowedValues" :json-name
                                      "allowedValues")
                                     (constraint-description :target-type
                                      string :member-name
                                      "ConstraintDescription" :json-name
                                      "constraintDescription")
                                     (default-value :target-type string
                                      :member-name "DefaultValue" :json-name
                                      "defaultValue")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (max-length :target-type integer
                                      :member-name "MaxLength" :json-name
                                      "maxLength")
                                     (max-value :target-type integer
                                      :member-name "MaxValue" :json-name
                                      "maxValue")
                                     (min-length :target-type integer
                                      :member-name "MinLength" :json-name
                                      "minLength")
                                     (min-value :target-type integer
                                      :member-name "MinValue" :json-name
                                      "minValue")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (no-echo :target-type boolean :member-name
                                      "NoEcho" :json-name "noEcho")
                                     (referenced-by-resources :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "ReferencedByResources"
                                      :json-name "referencedByResources")
                                     (type :target-type string :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "ParameterDefinition"))

(smithy/sdk/shapes:define-structure parameter-value common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"
                                      :json-name "value"))
                                    (:shape-name "ParameterValue"))

(smithy/sdk/shapes:define-input put-application-policy-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (statements :target-type
                                  list-of-application-policy-statement
                                  :required common-lisp:t :member-name
                                  "Statements" :json-name "statements"))
                                (:shape-name "PutApplicationPolicyRequest"))

(smithy/sdk/shapes:define-output put-application-policy-response
                                 common-lisp:nil
                                 ((statements :target-type
                                   list-of-application-policy-statement
                                   :member-name "Statements" :json-name
                                   "statements"))
                                 (:shape-name "PutApplicationPolicyResponse"))

(smithy/sdk/shapes:define-structure rollback-configuration common-lisp:nil
                                    ((monitoring-time-in-minutes :target-type
                                      integer :member-name
                                      "MonitoringTimeInMinutes" :json-name
                                      "monitoringTimeInMinutes")
                                     (rollback-triggers :target-type
                                      list-of-rollback-trigger :member-name
                                      "RollbackTriggers" :json-name
                                      "rollbackTriggers"))
                                    (:shape-name "RollbackConfiguration"))

(smithy/sdk/shapes:define-structure rollback-trigger common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type"
                                      :json-name "type"))
                                    (:shape-name "RollbackTrigger"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:preparing "PREPARING")
  (:active "ACTIVE")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :required
                                      common-lisp:t :member-name "Key"
                                      :json-name "key")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"
                                      :json-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((error-code :target-type string :member-name
                                  "ErrorCode" :json-name "errorCode")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input unshare-application-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (organization-id :target-type string :required
                                  common-lisp:t :member-name "OrganizationId"
                                  :json-name "organizationId"))
                                (:shape-name "UnshareApplicationRequest"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (author :target-type string :member-name
                                  "Author" :json-name "author")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (home-page-url :target-type string
                                  :member-name "HomePageUrl" :json-name
                                  "homePageUrl")
                                 (labels :target-type list-of-string
                                  :member-name "Labels" :json-name "labels")
                                 (readme-body :target-type string :member-name
                                  "ReadmeBody" :json-name "readmeBody")
                                 (readme-url :target-type string :member-name
                                  "ReadmeUrl" :json-name "readmeUrl"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 ((application-id :target-type string
                                   :member-name "ApplicationId" :json-name
                                   "applicationId")
                                  (author :target-type string :member-name
                                   "Author" :json-name "author")
                                  (creation-time :target-type string
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (home-page-url :target-type string
                                   :member-name "HomePageUrl" :json-name
                                   "homePageUrl")
                                  (is-verified-author :target-type boolean
                                   :member-name "IsVerifiedAuthor" :json-name
                                   "isVerifiedAuthor")
                                  (labels :target-type list-of-string
                                   :member-name "Labels" :json-name "labels")
                                  (license-url :target-type string :member-name
                                   "LicenseUrl" :json-name "licenseUrl")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (readme-url :target-type string :member-name
                                   "ReadmeUrl" :json-name "readmeUrl")
                                  (spdx-license-id :target-type string
                                   :member-name "SpdxLicenseId" :json-name
                                   "spdxLicenseId")
                                  (verified-author-url :target-type string
                                   :member-name "VerifiedAuthorUrl" :json-name
                                   "verifiedAuthorUrl")
                                  (version :target-type version :member-name
                                   "Version" :json-name "version"))
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-structure version common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId" :json-name
                                      "applicationId")
                                     (creation-time :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (parameter-definitions :target-type
                                      list-of-parameter-definition :required
                                      common-lisp:t :member-name
                                      "ParameterDefinitions" :json-name
                                      "parameterDefinitions")
                                     (required-capabilities :target-type
                                      list-of-capability :required
                                      common-lisp:t :member-name
                                      "RequiredCapabilities" :json-name
                                      "requiredCapabilities")
                                     (resources-supported :target-type boolean
                                      :required common-lisp:t :member-name
                                      "ResourcesSupported" :json-name
                                      "resourcesSupported")
                                     (semantic-version :target-type string
                                      :required common-lisp:t :member-name
                                      "SemanticVersion" :json-name
                                      "semanticVersion")
                                     (source-code-archive-url :target-type
                                      string :member-name
                                      "SourceCodeArchiveUrl" :json-name
                                      "sourceCodeArchiveUrl")
                                     (source-code-url :target-type string
                                      :member-name "SourceCodeUrl" :json-name
                                      "sourceCodeUrl")
                                     (template-url :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateUrl" :json-name "templateUrl"))
                                    (:shape-name "Version"))

(smithy/sdk/shapes:define-structure version-summary common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId" :json-name
                                      "applicationId")
                                     (creation-time :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (semantic-version :target-type string
                                      :required common-lisp:t :member-name
                                      "SemanticVersion" :json-name
                                      "semanticVersion")
                                     (source-code-url :target-type string
                                      :member-name "SourceCodeUrl" :json-name
                                      "sourceCodeUrl"))
                                    (:shape-name "VersionSummary"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-application-dependency-summary :member
                               application-dependency-summary)

(smithy/sdk/shapes:define-list list-of-application-policy-statement :member
                               application-policy-statement)

(smithy/sdk/shapes:define-list list-of-application-summary :member
                               application-summary)

(smithy/sdk/shapes:define-list list-of-capability :member capability)

(smithy/sdk/shapes:define-list list-of-parameter-definition :member
                               parameter-definition)

(smithy/sdk/shapes:define-list list-of-parameter-value :member parameter-value)

(smithy/sdk/shapes:define-list list-of-rollback-trigger :member
                               rollback-trigger)

(smithy/sdk/shapes:define-list list-of-tag :member tag)

(smithy/sdk/shapes:define-list list-of-version-summary :member version-summary)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/applications"
                                       :code 201)

(smithy/sdk/operation:define-operation create-application-version :shape-name
                                       "CreateApplicationVersion" :input
                                       create-application-version-request
                                       :output
                                       create-application-version-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/applications/{ApplicationId}/versions/{SemanticVersion}"
                                       :code 201)

(smithy/sdk/operation:define-operation create-cloud-formation-change-set
                                       :shape-name
                                       "CreateCloudFormationChangeSet" :input
                                       create-cloud-formation-change-set-request
                                       :output
                                       create-cloud-formation-change-set-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/changesets"
                                       :code 201)

(smithy/sdk/operation:define-operation create-cloud-formation-template
                                       :shape-name
                                       "CreateCloudFormationTemplate" :input
                                       create-cloud-formation-template-request
                                       :output
                                       create-cloud-formation-template-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/templates"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/applications/{ApplicationId}" :code
                                       204)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-application-policy :shape-name
                                       "GetApplicationPolicy" :input
                                       get-application-policy-request :output
                                       get-application-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cloud-formation-template :shape-name
                                       "GetCloudFormationTemplate" :input
                                       get-cloud-formation-template-request
                                       :output
                                       get-cloud-formation-template-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/templates/{TemplateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-application-dependencies
                                       :shape-name
                                       "ListApplicationDependencies" :input
                                       list-application-dependencies-request
                                       :output
                                       list-application-dependencies-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/dependencies"
                                       :code 200)

(smithy/sdk/operation:define-operation list-application-versions :shape-name
                                       "ListApplicationVersions" :input
                                       list-application-versions-request
                                       :output
                                       list-application-versions-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation put-application-policy :shape-name
                                       "PutApplicationPolicy" :input
                                       put-application-policy-request :output
                                       put-application-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/applications/{ApplicationId}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation unshare-application :shape-name
                                       "UnshareApplication" :input
                                       unshare-application-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/unshare"
                                       :code 204)

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/applications/{ApplicationId}" :code
                                       200)
