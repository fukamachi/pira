(uiop/package:define-package #:pira/tnb (:use)
                             (:export #:cancel-sol-network-operation
                              #:create-sol-function-package
                              #:create-sol-network-instance
                              #:create-sol-network-package
                              #:delete-sol-function-package
                              #:delete-sol-network-instance
                              #:delete-sol-network-package
                              #:descriptor-content-type #:error-cause
                              #:error-details #:error-info
                              #:function-artifact-meta
                              #:get-sol-function-instance
                              #:get-sol-function-instance-metadata
                              #:get-sol-function-package
                              #:get-sol-function-package-content
                              #:get-sol-function-package-descriptor
                              #:get-sol-function-package-metadata
                              #:get-sol-instantiated-vnf-info
                              #:get-sol-network-instance
                              #:get-sol-network-instance-metadata
                              #:get-sol-network-operation
                              #:get-sol-network-operation-metadata
                              #:get-sol-network-operation-task-details
                              #:get-sol-network-operation-tasks-list
                              #:get-sol-network-package
                              #:get-sol-network-package-content
                              #:get-sol-network-package-descriptor
                              #:get-sol-network-package-metadata
                              #:get-sol-vnf-info #:get-sol-vnfc-resource-info
                              #:get-sol-vnfc-resource-info-list
                              #:get-sol-vnfc-resource-info-metadata
                              #:instantiate-metadata
                              #:instantiate-sol-network-instance
                              #:lcm-operation-info #:lcm-operation-type
                              #:list-sol-function-instance-info
                              #:list-sol-function-instance-metadata
                              #:list-sol-function-instance-resources
                              #:list-sol-function-instances
                              #:list-sol-function-package-info
                              #:list-sol-function-package-metadata
                              #:list-sol-function-package-resources
                              #:list-sol-function-packages
                              #:list-sol-network-instance-info
                              #:list-sol-network-instance-metadata
                              #:list-sol-network-instance-resources
                              #:list-sol-network-instances
                              #:list-sol-network-operations
                              #:list-sol-network-operations-info
                              #:list-sol-network-operations-metadata
                              #:list-sol-network-operations-resources
                              #:list-sol-network-package-info
                              #:list-sol-network-package-metadata
                              #:list-sol-network-package-resources
                              #:list-sol-network-packages
                              #:list-tags-for-resource
                              #:modify-vnf-info-metadata
                              #:network-artifact-meta #:ns-instance-arn
                              #:ns-instance-id #:ns-lcm-op-occ-arn
                              #:ns-lcm-op-occ-id #:ns-lcm-operation-state
                              #:ns-state #:nsd-id #:nsd-info-arn #:nsd-info-id
                              #:nsd-onboarding-state #:nsd-operational-state
                              #:nsd-usage-state #:onboarding-state
                              #:operational-state #:override-list
                              #:package-content-type #:pagination-token
                              #:problem-details
                              #:put-sol-function-package-content
                              #:put-sol-function-package-content-metadata
                              #:put-sol-network-package-content
                              #:put-sol-network-package-content-metadata
                              #:sensitive-blob #:string-map #:tnb
                              #:tnbresource-arn #:tag-key #:tag-keys #:tag-map
                              #:tag-resource #:tag-value #:task-status
                              #:terminate-sol-network-instance #:tosca-override
                              #:untag-resource #:update-ns-metadata
                              #:update-sol-function-package
                              #:update-sol-network-instance
                              #:update-sol-network-modify
                              #:update-sol-network-package
                              #:update-sol-network-service-data
                              #:update-sol-network-type #:usage-state
                              #:validate-sol-function-package-content
                              #:validate-sol-function-package-content-metadata
                              #:validate-sol-network-package-content
                              #:validate-sol-network-package-content-metadata
                              #:vnf-instance-arn #:vnf-instance-id
                              #:vnf-instantiation-state #:vnf-operational-state
                              #:vnf-pkg-arn #:vnf-pkg-id #:vnf-pkg-id-list
                              #:vnfd-id))
(common-lisp:in-package #:pira/tnb)

(smithy/sdk/service:define-service tnb :shape-name "TNB" :version "2008-10-21"
                                   :title "AWS Telco Network Builder"
                                   :operations
                                   '(cancel-sol-network-operation
                                     create-sol-function-package
                                     create-sol-network-instance
                                     create-sol-network-package
                                     delete-sol-function-package
                                     delete-sol-network-instance
                                     delete-sol-network-package
                                     get-sol-function-instance
                                     get-sol-function-package
                                     get-sol-function-package-content
                                     get-sol-function-package-descriptor
                                     get-sol-network-instance
                                     get-sol-network-operation
                                     get-sol-network-package
                                     get-sol-network-package-content
                                     get-sol-network-package-descriptor
                                     instantiate-sol-network-instance
                                     list-sol-function-instances
                                     list-sol-function-packages
                                     list-sol-network-instances
                                     list-sol-network-operations
                                     list-sol-network-packages
                                     list-tags-for-resource
                                     put-sol-function-package-content
                                     put-sol-network-package-content
                                     tag-resource
                                     terminate-sol-network-instance
                                     untag-resource update-sol-function-package
                                     update-sol-network-instance
                                     update-sol-network-package
                                     validate-sol-function-package-content
                                     validate-sol-network-package-content)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "tnb")
                                      ("apiVersion" . "v1")
                                      ("arnNamespace" . "tnb"))
                                     ("aws.auth#sigv4" ("name" . "tnb"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input cancel-sol-network-operation-input
                                common-lisp:nil
                                ((ns-lcm-op-occ-id :target-type
                                  ns-lcm-op-occ-id :required common-lisp:t
                                  :member-name "nsLcmOpOccId" :http-label
                                  common-lisp:t))
                                (:shape-name "CancelSolNetworkOperationInput"))

(smithy/sdk/shapes:define-input create-sol-function-package-input
                                common-lisp:nil
                                ((tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateSolFunctionPackageInput"))

(smithy/sdk/shapes:define-output create-sol-function-package-output
                                 common-lisp:nil
                                 ((id :target-type vnf-pkg-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type vnf-pkg-arn :required
                                   common-lisp:t :member-name "arn")
                                  (onboarding-state :target-type
                                   onboarding-state :required common-lisp:t
                                   :member-name "onboardingState")
                                  (operational-state :target-type
                                   operational-state :required common-lisp:t
                                   :member-name "operationalState")
                                  (usage-state :target-type usage-state
                                   :required common-lisp:t :member-name
                                   "usageState")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateSolFunctionPackageOutput"))

(smithy/sdk/shapes:define-input create-sol-network-instance-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId")
                                 (ns-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "nsName")
                                 (ns-description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nsDescription")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateSolNetworkInstanceInput"))

(smithy/sdk/shapes:define-output create-sol-network-instance-output
                                 common-lisp:nil
                                 ((id :target-type ns-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type ns-instance-arn :required
                                   common-lisp:t :member-name "arn")
                                  (nsd-info-id :target-type nsd-info-id
                                   :required common-lisp:t :member-name
                                   "nsdInfoId")
                                  (ns-instance-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsInstanceName")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateSolNetworkInstanceOutput"))

(smithy/sdk/shapes:define-input create-sol-network-package-input
                                common-lisp:nil
                                ((tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateSolNetworkPackageInput"))

(smithy/sdk/shapes:define-output create-sol-network-package-output
                                 common-lisp:nil
                                 ((id :target-type nsd-info-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type nsd-info-arn :required
                                   common-lisp:t :member-name "arn")
                                  (nsd-onboarding-state :target-type
                                   nsd-onboarding-state :required common-lisp:t
                                   :member-name "nsdOnboardingState")
                                  (nsd-operational-state :target-type
                                   nsd-operational-state :required
                                   common-lisp:t :member-name
                                   "nsdOperationalState")
                                  (nsd-usage-state :target-type nsd-usage-state
                                   :required common-lisp:t :member-name
                                   "nsdUsageState")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateSolNetworkPackageOutput"))

(smithy/sdk/shapes:define-input delete-sol-function-package-input
                                common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSolFunctionPackageInput"))

(smithy/sdk/shapes:define-input delete-sol-network-instance-input
                                common-lisp:nil
                                ((ns-instance-id :target-type ns-instance-id
                                  :required common-lisp:t :member-name
                                  "nsInstanceId" :http-label common-lisp:t))
                                (:shape-name "DeleteSolNetworkInstanceInput"))

(smithy/sdk/shapes:define-input delete-sol-network-package-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t))
                                (:shape-name "DeleteSolNetworkPackageInput"))

(smithy/sdk/shapes:define-enum descriptor-content-type
    common-lisp:nil
  (:text-plain "text/plain"))

(smithy/sdk/shapes:define-type error-cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-details smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((cause :target-type error-cause
                                      :member-name "cause")
                                     (details :target-type error-details
                                      :member-name "details"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-structure function-artifact-meta common-lisp:nil
                                    ((overrides :target-type override-list
                                      :member-name "overrides"))
                                    (:shape-name "FunctionArtifactMeta"))

(smithy/sdk/shapes:define-input get-sol-function-instance-input common-lisp:nil
                                ((vnf-instance-id :target-type vnf-instance-id
                                  :required common-lisp:t :member-name
                                  "vnfInstanceId" :http-label common-lisp:t))
                                (:shape-name "GetSolFunctionInstanceInput"))

(smithy/sdk/shapes:define-structure get-sol-function-instance-metadata
                                    common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "GetSolFunctionInstanceMetadata"))

(smithy/sdk/shapes:define-output get-sol-function-instance-output
                                 common-lisp:nil
                                 ((id :target-type vnf-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type vnf-instance-arn :required
                                   common-lisp:t :member-name "arn")
                                  (ns-instance-id :target-type ns-instance-id
                                   :required common-lisp:t :member-name
                                   "nsInstanceId")
                                  (vnf-pkg-id :target-type vnf-pkg-id :required
                                   common-lisp:t :member-name "vnfPkgId")
                                  (vnfd-id :target-type vnfd-id :required
                                   common-lisp:t :member-name "vnfdId")
                                  (vnf-provider :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfProvider")
                                  (vnf-product-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfProductName")
                                  (vnfd-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfdVersion")
                                  (instantiation-state :target-type
                                   vnf-instantiation-state :required
                                   common-lisp:t :member-name
                                   "instantiationState")
                                  (instantiated-vnf-info :target-type
                                   get-sol-vnf-info :member-name
                                   "instantiatedVnfInfo")
                                  (metadata :target-type
                                   get-sol-function-instance-metadata :required
                                   common-lisp:t :member-name "metadata")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSolFunctionInstanceOutput"))

(smithy/sdk/shapes:define-input get-sol-function-package-content-input
                                common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t)
                                 (accept :target-type package-content-type
                                  :required common-lisp:t :member-name "accept"
                                  :http-header "Accept"))
                                (:shape-name
                                 "GetSolFunctionPackageContentInput"))

(smithy/sdk/shapes:define-output get-sol-function-package-content-output
                                 common-lisp:nil
                                 ((content-type :target-type
                                   package-content-type :member-name
                                   "contentType" :http-header "Content-Type")
                                  (package-content :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "packageContent" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetSolFunctionPackageContentOutput"))

(smithy/sdk/shapes:define-input get-sol-function-package-descriptor-input
                                common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t)
                                 (accept :target-type descriptor-content-type
                                  :required common-lisp:t :member-name "accept"
                                  :http-header "Accept"))
                                (:shape-name
                                 "GetSolFunctionPackageDescriptorInput"))

(smithy/sdk/shapes:define-output get-sol-function-package-descriptor-output
                                 common-lisp:nil
                                 ((content-type :target-type
                                   descriptor-content-type :member-name
                                   "contentType" :http-header "Content-Type")
                                  (vnfd :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "vnfd" :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetSolFunctionPackageDescriptorOutput"))

(smithy/sdk/shapes:define-input get-sol-function-package-input common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSolFunctionPackageInput"))

(smithy/sdk/shapes:define-structure get-sol-function-package-metadata
                                    common-lisp:nil
                                    ((vnfd :target-type function-artifact-meta
                                      :member-name "vnfd")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "GetSolFunctionPackageMetadata"))

(smithy/sdk/shapes:define-output get-sol-function-package-output
                                 common-lisp:nil
                                 ((id :target-type vnf-pkg-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type vnf-pkg-arn :required
                                   common-lisp:t :member-name "arn")
                                  (onboarding-state :target-type
                                   onboarding-state :required common-lisp:t
                                   :member-name "onboardingState")
                                  (operational-state :target-type
                                   operational-state :required common-lisp:t
                                   :member-name "operationalState")
                                  (usage-state :target-type usage-state
                                   :required common-lisp:t :member-name
                                   "usageState")
                                  (vnfd-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfdId")
                                  (vnf-provider :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfProvider")
                                  (vnf-product-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfProductName")
                                  (vnfd-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "vnfdVersion")
                                  (metadata :target-type
                                   get-sol-function-package-metadata
                                   :member-name "metadata")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSolFunctionPackageOutput"))

(smithy/sdk/shapes:define-structure get-sol-instantiated-vnf-info
                                    common-lisp:nil
                                    ((vnf-state :target-type
                                      vnf-operational-state :member-name
                                      "vnfState"))
                                    (:shape-name "GetSolInstantiatedVnfInfo"))

(smithy/sdk/shapes:define-input get-sol-network-instance-input common-lisp:nil
                                ((ns-instance-id :target-type ns-instance-id
                                  :required common-lisp:t :member-name
                                  "nsInstanceId" :http-label common-lisp:t))
                                (:shape-name "GetSolNetworkInstanceInput"))

(smithy/sdk/shapes:define-structure get-sol-network-instance-metadata
                                    common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "GetSolNetworkInstanceMetadata"))

(smithy/sdk/shapes:define-output get-sol-network-instance-output
                                 common-lisp:nil
                                 ((id :target-type ns-instance-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type ns-instance-arn :required
                                   common-lisp:t :member-name "arn")
                                  (ns-instance-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsInstanceName")
                                  (ns-instance-description :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "nsInstanceDescription")
                                  (nsd-id :target-type nsd-id :required
                                   common-lisp:t :member-name "nsdId")
                                  (nsd-info-id :target-type nsd-info-id
                                   :required common-lisp:t :member-name
                                   "nsdInfoId")
                                  (ns-state :target-type ns-state :member-name
                                   "nsState")
                                  (lcm-op-info :target-type lcm-operation-info
                                   :member-name "lcmOpInfo")
                                  (metadata :target-type
                                   get-sol-network-instance-metadata :required
                                   common-lisp:t :member-name "metadata")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSolNetworkInstanceOutput"))

(smithy/sdk/shapes:define-input get-sol-network-operation-input common-lisp:nil
                                ((ns-lcm-op-occ-id :target-type
                                  ns-lcm-op-occ-id :required common-lisp:t
                                  :member-name "nsLcmOpOccId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSolNetworkOperationInput"))

(smithy/sdk/shapes:define-structure get-sol-network-operation-metadata
                                    common-lisp:nil
                                    ((update-ns-metadata :target-type
                                      update-ns-metadata :member-name
                                      "updateNsMetadata")
                                     (modify-vnf-info-metadata :target-type
                                      modify-vnf-info-metadata :member-name
                                      "modifyVnfInfoMetadata")
                                     (instantiate-metadata :target-type
                                      instantiate-metadata :member-name
                                      "instantiateMetadata")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "GetSolNetworkOperationMetadata"))

(smithy/sdk/shapes:define-output get-sol-network-operation-output
                                 common-lisp:nil
                                 ((id :target-type ns-lcm-op-occ-id
                                   :member-name "id")
                                  (arn :target-type ns-lcm-op-occ-arn :required
                                   common-lisp:t :member-name "arn")
                                  (operation-state :target-type
                                   ns-lcm-operation-state :member-name
                                   "operationState")
                                  (ns-instance-id :target-type ns-instance-id
                                   :member-name "nsInstanceId")
                                  (lcm-operation-type :target-type
                                   lcm-operation-type :member-name
                                   "lcmOperationType")
                                  (update-type :target-type
                                   update-sol-network-type :member-name
                                   "updateType")
                                  (error :target-type problem-details
                                   :member-name "error")
                                  (metadata :target-type
                                   get-sol-network-operation-metadata
                                   :member-name "metadata")
                                  (tasks :target-type
                                   get-sol-network-operation-tasks-list
                                   :member-name "tasks")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSolNetworkOperationOutput"))

(smithy/sdk/shapes:define-structure get-sol-network-operation-task-details
                                    common-lisp:nil
                                    ((task-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskName")
                                     (task-context :target-type string-map
                                      :member-name "taskContext")
                                     (task-error-details :target-type
                                      error-info :member-name
                                      "taskErrorDetails")
                                     (task-status :target-type task-status
                                      :member-name "taskStatus")
                                     (task-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "taskStartTime"
                                      :timestamp-format "date-time")
                                     (task-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "taskEndTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name
                                     "GetSolNetworkOperationTaskDetails"))

(smithy/sdk/shapes:define-list get-sol-network-operation-tasks-list :member
                               get-sol-network-operation-task-details)

(smithy/sdk/shapes:define-input get-sol-network-package-content-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t)
                                 (accept :target-type package-content-type
                                  :required common-lisp:t :member-name "accept"
                                  :http-header "Accept"))
                                (:shape-name
                                 "GetSolNetworkPackageContentInput"))

(smithy/sdk/shapes:define-output get-sol-network-package-content-output
                                 common-lisp:nil
                                 ((content-type :target-type
                                   package-content-type :member-name
                                   "contentType" :http-header "Content-Type")
                                  (nsd-content :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "nsdContent" :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetSolNetworkPackageContentOutput"))

(smithy/sdk/shapes:define-input get-sol-network-package-descriptor-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetSolNetworkPackageDescriptorInput"))

(smithy/sdk/shapes:define-output get-sol-network-package-descriptor-output
                                 common-lisp:nil
                                 ((content-type :target-type
                                   descriptor-content-type :member-name
                                   "contentType" :http-header "Content-Type")
                                  (nsd :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "nsd" :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetSolNetworkPackageDescriptorOutput"))

(smithy/sdk/shapes:define-input get-sol-network-package-input common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t))
                                (:shape-name "GetSolNetworkPackageInput"))

(smithy/sdk/shapes:define-structure get-sol-network-package-metadata
                                    common-lisp:nil
                                    ((nsd :target-type network-artifact-meta
                                      :member-name "nsd")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "GetSolNetworkPackageMetadata"))

(smithy/sdk/shapes:define-output get-sol-network-package-output common-lisp:nil
                                 ((id :target-type nsd-info-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type nsd-info-arn :required
                                   common-lisp:t :member-name "arn")
                                  (nsd-onboarding-state :target-type
                                   nsd-onboarding-state :required common-lisp:t
                                   :member-name "nsdOnboardingState")
                                  (nsd-operational-state :target-type
                                   nsd-operational-state :required
                                   common-lisp:t :member-name
                                   "nsdOperationalState")
                                  (nsd-usage-state :target-type nsd-usage-state
                                   :required common-lisp:t :member-name
                                   "nsdUsageState")
                                  (nsd-id :target-type nsd-id :required
                                   common-lisp:t :member-name "nsdId")
                                  (nsd-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsdName")
                                  (nsd-version :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsdVersion")
                                  (vnf-pkg-ids :target-type vnf-pkg-id-list
                                   :required common-lisp:t :member-name
                                   "vnfPkgIds")
                                  (metadata :target-type
                                   get-sol-network-package-metadata :required
                                   common-lisp:t :member-name "metadata")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSolNetworkPackageOutput"))

(smithy/sdk/shapes:define-structure get-sol-vnf-info common-lisp:nil
                                    ((vnf-state :target-type
                                      vnf-operational-state :member-name
                                      "vnfState")
                                     (vnfc-resource-info :target-type
                                      get-sol-vnfc-resource-info-list
                                      :member-name "vnfcResourceInfo"))
                                    (:shape-name "GetSolVnfInfo"))

(smithy/sdk/shapes:define-structure get-sol-vnfc-resource-info common-lisp:nil
                                    ((metadata :target-type
                                      get-sol-vnfc-resource-info-metadata
                                      :member-name "metadata"))
                                    (:shape-name "GetSolVnfcResourceInfo"))

(smithy/sdk/shapes:define-list get-sol-vnfc-resource-info-list :member
                               get-sol-vnfc-resource-info)

(smithy/sdk/shapes:define-structure get-sol-vnfc-resource-info-metadata
                                    common-lisp:nil
                                    ((node-group :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nodeGroup")
                                     (cluster :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "cluster")
                                     (helm-chart :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "helmChart"))
                                    (:shape-name
                                     "GetSolVnfcResourceInfoMetadata"))

(smithy/sdk/shapes:define-structure instantiate-metadata common-lisp:nil
                                    ((nsd-info-id :target-type nsd-info-id
                                      :required common-lisp:t :member-name
                                      "nsdInfoId")
                                     (additional-params-for-ns :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "additionalParamsForNs"))
                                    (:shape-name "InstantiateMetadata"))

(smithy/sdk/shapes:define-input instantiate-sol-network-instance-input
                                common-lisp:nil
                                ((ns-instance-id :target-type ns-instance-id
                                  :required common-lisp:t :member-name
                                  "nsInstanceId" :http-label common-lisp:t)
                                 (dry-run :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "dryRun" :http-query "dry_run")
                                 (additional-params-for-ns :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "additionalParamsForNs")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "InstantiateSolNetworkInstanceInput"))

(smithy/sdk/shapes:define-output instantiate-sol-network-instance-output
                                 common-lisp:nil
                                 ((ns-lcm-op-occ-id :target-type
                                   ns-lcm-op-occ-id :required common-lisp:t
                                   :member-name "nsLcmOpOccId")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "InstantiateSolNetworkInstanceOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure lcm-operation-info common-lisp:nil
                                    ((ns-lcm-op-occ-id :target-type
                                      ns-lcm-op-occ-id :required common-lisp:t
                                      :member-name "nsLcmOpOccId"))
                                    (:shape-name "LcmOperationInfo"))

(smithy/sdk/shapes:define-enum lcm-operation-type
    common-lisp:nil
  (:instantiate "INSTANTIATE")
  (:update "UPDATE")
  (:terminate "TERMINATE"))

(smithy/sdk/shapes:define-structure list-sol-function-instance-info
                                    common-lisp:nil
                                    ((id :target-type vnf-instance-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type vnf-instance-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (ns-instance-id :target-type
                                      ns-instance-id :required common-lisp:t
                                      :member-name "nsInstanceId")
                                     (vnf-pkg-id :target-type vnf-pkg-id
                                      :required common-lisp:t :member-name
                                      "vnfPkgId")
                                     (vnf-pkg-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnfPkgName")
                                     (instantiation-state :target-type
                                      vnf-instantiation-state :required
                                      common-lisp:t :member-name
                                      "instantiationState")
                                     (instantiated-vnf-info :target-type
                                      get-sol-instantiated-vnf-info
                                      :member-name "instantiatedVnfInfo")
                                     (metadata :target-type
                                      list-sol-function-instance-metadata
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name "ListSolFunctionInstanceInfo"))

(smithy/sdk/shapes:define-structure list-sol-function-instance-metadata
                                    common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "ListSolFunctionInstanceMetadata"))

(smithy/sdk/shapes:define-list list-sol-function-instance-resources :member
                               list-sol-function-instance-info)

(smithy/sdk/shapes:define-input list-sol-function-instances-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "max_results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextpage_opaque_marker"))
                                (:shape-name "ListSolFunctionInstancesInput"))

(smithy/sdk/shapes:define-output list-sol-function-instances-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (function-instances :target-type
                                   list-sol-function-instance-resources
                                   :member-name "functionInstances"))
                                 (:shape-name "ListSolFunctionInstancesOutput"))

(smithy/sdk/shapes:define-structure list-sol-function-package-info
                                    common-lisp:nil
                                    ((id :target-type vnf-pkg-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type vnf-pkg-arn :required
                                      common-lisp:t :member-name "arn")
                                     (onboarding-state :target-type
                                      onboarding-state :required common-lisp:t
                                      :member-name "onboardingState")
                                     (operational-state :target-type
                                      operational-state :required common-lisp:t
                                      :member-name "operationalState")
                                     (usage-state :target-type usage-state
                                      :required common-lisp:t :member-name
                                      "usageState")
                                     (vnfd-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnfdId")
                                     (vnf-provider :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnfProvider")
                                     (vnf-product-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnfProductName")
                                     (vnfd-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnfdVersion")
                                     (metadata :target-type
                                      list-sol-function-package-metadata
                                      :member-name "metadata"))
                                    (:shape-name "ListSolFunctionPackageInfo"))

(smithy/sdk/shapes:define-structure list-sol-function-package-metadata
                                    common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "ListSolFunctionPackageMetadata"))

(smithy/sdk/shapes:define-list list-sol-function-package-resources :member
                               list-sol-function-package-info)

(smithy/sdk/shapes:define-input list-sol-function-packages-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "max_results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextpage_opaque_marker"))
                                (:shape-name "ListSolFunctionPackagesInput"))

(smithy/sdk/shapes:define-output list-sol-function-packages-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (function-packages :target-type
                                   list-sol-function-package-resources
                                   :required common-lisp:t :member-name
                                   "functionPackages"))
                                 (:shape-name "ListSolFunctionPackagesOutput"))

(smithy/sdk/shapes:define-structure list-sol-network-instance-info
                                    common-lisp:nil
                                    ((id :target-type ns-instance-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type ns-instance-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (ns-instance-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "nsInstanceName")
                                     (ns-instance-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "nsInstanceDescription")
                                     (nsd-id :target-type nsd-id :required
                                      common-lisp:t :member-name "nsdId")
                                     (nsd-info-id :target-type nsd-info-id
                                      :required common-lisp:t :member-name
                                      "nsdInfoId")
                                     (ns-state :target-type ns-state :required
                                      common-lisp:t :member-name "nsState")
                                     (metadata :target-type
                                      list-sol-network-instance-metadata
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name "ListSolNetworkInstanceInfo"))

(smithy/sdk/shapes:define-structure list-sol-network-instance-metadata
                                    common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "ListSolNetworkInstanceMetadata"))

(smithy/sdk/shapes:define-list list-sol-network-instance-resources :member
                               list-sol-network-instance-info)

(smithy/sdk/shapes:define-input list-sol-network-instances-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "max_results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextpage_opaque_marker"))
                                (:shape-name "ListSolNetworkInstancesInput"))

(smithy/sdk/shapes:define-output list-sol-network-instances-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (network-instances :target-type
                                   list-sol-network-instance-resources
                                   :member-name "networkInstances"))
                                 (:shape-name "ListSolNetworkInstancesOutput"))

(smithy/sdk/shapes:define-structure list-sol-network-operations-info
                                    common-lisp:nil
                                    ((id :target-type ns-lcm-op-occ-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type ns-lcm-op-occ-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (operation-state :target-type
                                      ns-lcm-operation-state :required
                                      common-lisp:t :member-name
                                      "operationState")
                                     (ns-instance-id :target-type
                                      ns-instance-id :required common-lisp:t
                                      :member-name "nsInstanceId")
                                     (lcm-operation-type :target-type
                                      lcm-operation-type :required
                                      common-lisp:t :member-name
                                      "lcmOperationType")
                                     (update-type :target-type
                                      update-sol-network-type :member-name
                                      "updateType")
                                     (error :target-type problem-details
                                      :member-name "error")
                                     (metadata :target-type
                                      list-sol-network-operations-metadata
                                      :member-name "metadata"))
                                    (:shape-name
                                     "ListSolNetworkOperationsInfo"))

(smithy/sdk/shapes:define-input list-sol-network-operations-input
                                common-lisp:nil
                                ((ns-instance-id :target-type ns-instance-id
                                  :member-name "nsInstanceId" :http-query
                                  "nsInstanceId")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "max_results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextpage_opaque_marker"))
                                (:shape-name "ListSolNetworkOperationsInput"))

(smithy/sdk/shapes:define-structure list-sol-network-operations-metadata
                                    common-lisp:nil
                                    ((nsd-info-id :target-type nsd-info-id
                                      :member-name "nsdInfoId")
                                     (vnf-instance-id :target-type
                                      vnf-instance-id :member-name
                                      "vnfInstanceId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "ListSolNetworkOperationsMetadata"))

(smithy/sdk/shapes:define-output list-sol-network-operations-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (network-operations :target-type
                                   list-sol-network-operations-resources
                                   :member-name "networkOperations"))
                                 (:shape-name "ListSolNetworkOperationsOutput"))

(smithy/sdk/shapes:define-list list-sol-network-operations-resources :member
                               list-sol-network-operations-info)

(smithy/sdk/shapes:define-structure list-sol-network-package-info
                                    common-lisp:nil
                                    ((id :target-type nsd-info-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type nsd-info-arn :required
                                      common-lisp:t :member-name "arn")
                                     (nsd-onboarding-state :target-type
                                      nsd-onboarding-state :required
                                      common-lisp:t :member-name
                                      "nsdOnboardingState")
                                     (nsd-operational-state :target-type
                                      nsd-operational-state :required
                                      common-lisp:t :member-name
                                      "nsdOperationalState")
                                     (nsd-usage-state :target-type
                                      nsd-usage-state :required common-lisp:t
                                      :member-name "nsdUsageState")
                                     (nsd-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nsdId")
                                     (nsd-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nsdName")
                                     (nsd-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nsdVersion")
                                     (nsd-designer :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nsdDesigner")
                                     (nsd-invariant-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nsdInvariantId")
                                     (vnf-pkg-ids :target-type vnf-pkg-id-list
                                      :member-name "vnfPkgIds")
                                     (metadata :target-type
                                      list-sol-network-package-metadata
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name "ListSolNetworkPackageInfo"))

(smithy/sdk/shapes:define-structure list-sol-network-package-metadata
                                    common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (last-modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModified" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "ListSolNetworkPackageMetadata"))

(smithy/sdk/shapes:define-list list-sol-network-package-resources :member
                               list-sol-network-package-info)

(smithy/sdk/shapes:define-input list-sol-network-packages-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "max_results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextpage_opaque_marker"))
                                (:shape-name "ListSolNetworkPackagesInput"))

(smithy/sdk/shapes:define-output list-sol-network-packages-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (network-packages :target-type
                                   list-sol-network-package-resources :required
                                   common-lisp:t :member-name
                                   "networkPackages"))
                                 (:shape-name "ListSolNetworkPackagesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type tnbresource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure modify-vnf-info-metadata common-lisp:nil
                                    ((vnf-instance-id :target-type
                                      vnf-instance-id :required common-lisp:t
                                      :member-name "vnfInstanceId")
                                     (vnf-configurable-properties :target-type
                                      smithy/sdk/smithy-types:document
                                      :required common-lisp:t :member-name
                                      "vnfConfigurableProperties"))
                                    (:shape-name "ModifyVnfInfoMetadata"))

(smithy/sdk/shapes:define-structure network-artifact-meta common-lisp:nil
                                    ((overrides :target-type override-list
                                      :member-name "overrides"))
                                    (:shape-name "NetworkArtifactMeta"))

(smithy/sdk/shapes:define-type ns-instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ns-instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ns-lcm-op-occ-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ns-lcm-op-occ-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ns-lcm-operation-state
    common-lisp:nil
  (:processing "PROCESSING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-enum ns-state
    common-lisp:nil
  (:instantiated "INSTANTIATED")
  (:not-instantiated "NOT_INSTANTIATED")
  (:updated "UPDATED")
  (:impaired "IMPAIRED")
  (:update-failed "UPDATE_FAILED")
  (:stopped "STOPPED")
  (:deleted "DELETED")
  (:instantiate-in-progress "INSTANTIATE_IN_PROGRESS")
  (:intent-to-update-in-progress "INTENT_TO_UPDATE_IN_PROGRESS")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:terminate-in-progress "TERMINATE_IN_PROGRESS"))

(smithy/sdk/shapes:define-type nsd-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nsd-info-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nsd-info-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum nsd-onboarding-state
    common-lisp:nil
  (:created "CREATED")
  (:onboarded "ONBOARDED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum nsd-operational-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum nsd-usage-state
    common-lisp:nil
  (:in-use "IN_USE")
  (:not-in-use "NOT_IN_USE"))

(smithy/sdk/shapes:define-enum onboarding-state
    common-lisp:nil
  (:created "CREATED")
  (:onboarded "ONBOARDED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum operational-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list override-list :member tosca-override)

(smithy/sdk/shapes:define-enum package-content-type
    common-lisp:nil
  (:application-zip "application/zip"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure problem-details common-lisp:nil
                                    ((detail :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "detail")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title"))
                                    (:shape-name "ProblemDetails"))

(smithy/sdk/shapes:define-input put-sol-function-package-content-input
                                common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t)
                                 (content-type :target-type
                                  package-content-type :member-name
                                  "contentType" :http-header "Content-Type")
                                 (file :target-type sensitive-blob :required
                                  common-lisp:t :member-name "file"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "PutSolFunctionPackageContentInput"))

(smithy/sdk/shapes:define-structure put-sol-function-package-content-metadata
                                    common-lisp:nil
                                    ((vnfd :target-type function-artifact-meta
                                      :member-name "vnfd"))
                                    (:shape-name
                                     "PutSolFunctionPackageContentMetadata"))

(smithy/sdk/shapes:define-output put-sol-function-package-content-output
                                 common-lisp:nil
                                 ((id :target-type vnf-pkg-id :required
                                   common-lisp:t :member-name "id")
                                  (vnfd-id :target-type vnfd-id :required
                                   common-lisp:t :member-name "vnfdId")
                                  (vnf-product-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "vnfProductName")
                                  (vnf-provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "vnfProvider")
                                  (vnfd-version :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "vnfdVersion")
                                  (metadata :target-type
                                   put-sol-function-package-content-metadata
                                   :required common-lisp:t :member-name
                                   "metadata"))
                                 (:shape-name
                                  "PutSolFunctionPackageContentOutput"))

(smithy/sdk/shapes:define-input put-sol-network-package-content-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t)
                                 (content-type :target-type
                                  package-content-type :member-name
                                  "contentType" :http-header "Content-Type")
                                 (file :target-type sensitive-blob :required
                                  common-lisp:t :member-name "file"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "PutSolNetworkPackageContentInput"))

(smithy/sdk/shapes:define-structure put-sol-network-package-content-metadata
                                    common-lisp:nil
                                    ((nsd :target-type network-artifact-meta
                                      :member-name "nsd"))
                                    (:shape-name
                                     "PutSolNetworkPackageContentMetadata"))

(smithy/sdk/shapes:define-output put-sol-network-package-content-output
                                 common-lisp:nil
                                 ((id :target-type nsd-info-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type nsd-info-arn :required
                                   common-lisp:t :member-name "arn")
                                  (nsd-id :target-type nsd-id :required
                                   common-lisp:t :member-name "nsdId")
                                  (nsd-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsdName")
                                  (nsd-version :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsdVersion")
                                  (vnf-pkg-ids :target-type vnf-pkg-id-list
                                   :required common-lisp:t :member-name
                                   "vnfPkgIds")
                                  (metadata :target-type
                                   put-sol-network-package-content-metadata
                                   :required common-lisp:t :member-name
                                   "metadata"))
                                 (:shape-name
                                  "PutSolNetworkPackageContentOutput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sensitive-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-map string-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tnbresource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type tnbresource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:started "STARTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:error "ERROR")
  (:skipped "SKIPPED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-input terminate-sol-network-instance-input
                                common-lisp:nil
                                ((ns-instance-id :target-type ns-instance-id
                                  :required common-lisp:t :member-name
                                  "nsInstanceId" :http-label common-lisp:t)
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "TerminateSolNetworkInstanceInput"))

(smithy/sdk/shapes:define-output terminate-sol-network-instance-output
                                 common-lisp:nil
                                 ((ns-lcm-op-occ-id :target-type
                                   ns-lcm-op-occ-id :member-name
                                   "nsLcmOpOccId")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "TerminateSolNetworkInstanceOutput"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tosca-override common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (default-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultValue"))
                                    (:shape-name "ToscaOverride"))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type tnbresource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-ns-metadata common-lisp:nil
                                    ((nsd-info-id :target-type nsd-info-id
                                      :required common-lisp:t :member-name
                                      "nsdInfoId")
                                     (additional-params-for-ns :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "additionalParamsForNs"))
                                    (:shape-name "UpdateNsMetadata"))

(smithy/sdk/shapes:define-input update-sol-function-package-input
                                common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t)
                                 (operational-state :target-type
                                  operational-state :required common-lisp:t
                                  :member-name "operationalState"))
                                (:shape-name "UpdateSolFunctionPackageInput"))

(smithy/sdk/shapes:define-output update-sol-function-package-output
                                 common-lisp:nil
                                 ((operational-state :target-type
                                   operational-state :required common-lisp:t
                                   :member-name "operationalState"))
                                 (:shape-name "UpdateSolFunctionPackageOutput"))

(smithy/sdk/shapes:define-input update-sol-network-instance-input
                                common-lisp:nil
                                ((ns-instance-id :target-type ns-instance-id
                                  :required common-lisp:t :member-name
                                  "nsInstanceId" :http-label common-lisp:t)
                                 (update-type :target-type
                                  update-sol-network-type :required
                                  common-lisp:t :member-name "updateType")
                                 (modify-vnf-info-data :target-type
                                  update-sol-network-modify :member-name
                                  "modifyVnfInfoData")
                                 (update-ns :target-type
                                  update-sol-network-service-data :member-name
                                  "updateNs")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "UpdateSolNetworkInstanceInput"))

(smithy/sdk/shapes:define-output update-sol-network-instance-output
                                 common-lisp:nil
                                 ((ns-lcm-op-occ-id :target-type
                                   ns-lcm-op-occ-id :member-name
                                   "nsLcmOpOccId")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateSolNetworkInstanceOutput"))

(smithy/sdk/shapes:define-structure update-sol-network-modify common-lisp:nil
                                    ((vnf-instance-id :target-type
                                      vnf-instance-id :required common-lisp:t
                                      :member-name "vnfInstanceId")
                                     (vnf-configurable-properties :target-type
                                      smithy/sdk/smithy-types:document
                                      :required common-lisp:t :member-name
                                      "vnfConfigurableProperties"))
                                    (:shape-name "UpdateSolNetworkModify"))

(smithy/sdk/shapes:define-input update-sol-network-package-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t)
                                 (nsd-operational-state :target-type
                                  nsd-operational-state :required common-lisp:t
                                  :member-name "nsdOperationalState"))
                                (:shape-name "UpdateSolNetworkPackageInput"))

(smithy/sdk/shapes:define-output update-sol-network-package-output
                                 common-lisp:nil
                                 ((nsd-operational-state :target-type
                                   nsd-operational-state :required
                                   common-lisp:t :member-name
                                   "nsdOperationalState"))
                                 (:shape-name "UpdateSolNetworkPackageOutput"))

(smithy/sdk/shapes:define-structure update-sol-network-service-data
                                    common-lisp:nil
                                    ((nsd-info-id :target-type nsd-info-id
                                      :required common-lisp:t :member-name
                                      "nsdInfoId")
                                     (additional-params-for-ns :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "additionalParamsForNs"))
                                    (:shape-name "UpdateSolNetworkServiceData"))

(smithy/sdk/shapes:define-enum update-sol-network-type
    common-lisp:nil
  (:modify-vnf-information "MODIFY_VNF_INFORMATION")
  (:update-ns "UPDATE_NS"))

(smithy/sdk/shapes:define-enum usage-state
    common-lisp:nil
  (:in-use "IN_USE")
  (:not-in-use "NOT_IN_USE"))

(smithy/sdk/shapes:define-input validate-sol-function-package-content-input
                                common-lisp:nil
                                ((vnf-pkg-id :target-type vnf-pkg-id :required
                                  common-lisp:t :member-name "vnfPkgId"
                                  :http-label common-lisp:t)
                                 (content-type :target-type
                                  package-content-type :member-name
                                  "contentType" :http-header "Content-Type")
                                 (file :target-type sensitive-blob :required
                                  common-lisp:t :member-name "file"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "ValidateSolFunctionPackageContentInput"))

(smithy/sdk/shapes:define-structure
 validate-sol-function-package-content-metadata common-lisp:nil
 ((vnfd :target-type function-artifact-meta :member-name "vnfd"))
 (:shape-name "ValidateSolFunctionPackageContentMetadata"))

(smithy/sdk/shapes:define-output validate-sol-function-package-content-output
                                 common-lisp:nil
                                 ((id :target-type vnf-pkg-id :required
                                   common-lisp:t :member-name "id")
                                  (vnfd-id :target-type vnfd-id :required
                                   common-lisp:t :member-name "vnfdId")
                                  (vnf-product-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "vnfProductName")
                                  (vnf-provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "vnfProvider")
                                  (vnfd-version :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "vnfdVersion")
                                  (metadata :target-type
                                   validate-sol-function-package-content-metadata
                                   :required common-lisp:t :member-name
                                   "metadata"))
                                 (:shape-name
                                  "ValidateSolFunctionPackageContentOutput"))

(smithy/sdk/shapes:define-input validate-sol-network-package-content-input
                                common-lisp:nil
                                ((nsd-info-id :target-type nsd-info-id
                                  :required common-lisp:t :member-name
                                  "nsdInfoId" :http-label common-lisp:t)
                                 (content-type :target-type
                                  package-content-type :member-name
                                  "contentType" :http-header "Content-Type")
                                 (file :target-type sensitive-blob :required
                                  common-lisp:t :member-name "file"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "ValidateSolNetworkPackageContentInput"))

(smithy/sdk/shapes:define-structure
 validate-sol-network-package-content-metadata common-lisp:nil
 ((nsd :target-type network-artifact-meta :member-name "nsd"))
 (:shape-name "ValidateSolNetworkPackageContentMetadata"))

(smithy/sdk/shapes:define-output validate-sol-network-package-content-output
                                 common-lisp:nil
                                 ((id :target-type nsd-info-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type nsd-info-arn :required
                                   common-lisp:t :member-name "arn")
                                  (nsd-id :target-type nsd-id :required
                                   common-lisp:t :member-name "nsdId")
                                  (nsd-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsdName")
                                  (nsd-version :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "nsdVersion")
                                  (vnf-pkg-ids :target-type vnf-pkg-id-list
                                   :required common-lisp:t :member-name
                                   "vnfPkgIds")
                                  (metadata :target-type
                                   validate-sol-network-package-content-metadata
                                   :required common-lisp:t :member-name
                                   "metadata"))
                                 (:shape-name
                                  "ValidateSolNetworkPackageContentOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vnf-instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vnf-instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vnf-instantiation-state
    common-lisp:nil
  (:instantiated "INSTANTIATED")
  (:not-instantiated "NOT_INSTANTIATED"))

(smithy/sdk/shapes:define-enum vnf-operational-state
    common-lisp:nil
  (:started "STARTED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-type vnf-pkg-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vnf-pkg-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vnf-pkg-id-list :member vnf-pkg-id)

(smithy/sdk/shapes:define-type vnfd-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-sol-network-operation :shape-name
                                       "CancelSolNetworkOperation" :input
                                       cancel-sol-network-operation-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel"
                                       :code 202)

(smithy/sdk/operation:define-operation create-sol-function-package :shape-name
                                       "CreateSolFunctionPackage" :input
                                       create-sol-function-package-input
                                       :output
                                       create-sol-function-package-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages" :code 201)

(smithy/sdk/operation:define-operation create-sol-network-instance :shape-name
                                       "CreateSolNetworkInstance" :input
                                       create-sol-network-instance-input
                                       :output
                                       create-sol-network-instance-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/nslcm/v1/ns_instances" :code 201)

(smithy/sdk/operation:define-operation create-sol-network-package :shape-name
                                       "CreateSolNetworkPackage" :input
                                       create-sol-network-package-input :output
                                       create-sol-network-package-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/nsd/v1/ns_descriptors" :code 201)

(smithy/sdk/operation:define-operation delete-sol-function-package :shape-name
                                       "DeleteSolFunctionPackage" :input
                                       delete-sol-function-package-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-sol-network-instance :shape-name
                                       "DeleteSolNetworkInstance" :input
                                       delete-sol-network-instance-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/sol/nslcm/v1/ns_instances/{nsInstanceId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-sol-network-package :shape-name
                                       "DeleteSolNetworkPackage" :input
                                       delete-sol-network-package-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-sol-function-instance :shape-name
                                       "GetSolFunctionInstance" :input
                                       get-sol-function-instance-input :output
                                       get-sol-function-instance-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sol-function-package :shape-name
                                       "GetSolFunctionPackage" :input
                                       get-sol-function-package-input :output
                                       get-sol-function-package-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}")

(smithy/sdk/operation:define-operation get-sol-function-package-content
                                       :shape-name
                                       "GetSolFunctionPackageContent" :input
                                       get-sol-function-package-content-input
                                       :output
                                       get-sol-function-package-content-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content")

(smithy/sdk/operation:define-operation get-sol-function-package-descriptor
                                       :shape-name
                                       "GetSolFunctionPackageDescriptor" :input
                                       get-sol-function-package-descriptor-input
                                       :output
                                       get-sol-function-package-descriptor-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd")

(smithy/sdk/operation:define-operation get-sol-network-instance :shape-name
                                       "GetSolNetworkInstance" :input
                                       get-sol-network-instance-input :output
                                       get-sol-network-instance-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nslcm/v1/ns_instances/{nsInstanceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sol-network-operation :shape-name
                                       "GetSolNetworkOperation" :input
                                       get-sol-network-operation-input :output
                                       get-sol-network-operation-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}")

(smithy/sdk/operation:define-operation get-sol-network-package :shape-name
                                       "GetSolNetworkPackage" :input
                                       get-sol-network-package-input :output
                                       get-sol-network-package-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}")

(smithy/sdk/operation:define-operation get-sol-network-package-content
                                       :shape-name
                                       "GetSolNetworkPackageContent" :input
                                       get-sol-network-package-content-input
                                       :output
                                       get-sol-network-package-content-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content")

(smithy/sdk/operation:define-operation get-sol-network-package-descriptor
                                       :shape-name
                                       "GetSolNetworkPackageDescriptor" :input
                                       get-sol-network-package-descriptor-input
                                       :output
                                       get-sol-network-package-descriptor-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd")

(smithy/sdk/operation:define-operation instantiate-sol-network-instance
                                       :shape-name
                                       "InstantiateSolNetworkInstance" :input
                                       instantiate-sol-network-instance-input
                                       :output
                                       instantiate-sol-network-instance-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate"
                                       :code 201)

(smithy/sdk/operation:define-operation list-sol-function-instances :shape-name
                                       "ListSolFunctionInstances" :input
                                       list-sol-function-instances-input
                                       :output
                                       list-sol-function-instances-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/vnflcm/v1/vnf_instances")

(smithy/sdk/operation:define-operation list-sol-function-packages :shape-name
                                       "ListSolFunctionPackages" :input
                                       list-sol-function-packages-input :output
                                       list-sol-function-packages-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages")

(smithy/sdk/operation:define-operation list-sol-network-instances :shape-name
                                       "ListSolNetworkInstances" :input
                                       list-sol-network-instances-input :output
                                       list-sol-network-instances-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nslcm/v1/ns_instances")

(smithy/sdk/operation:define-operation list-sol-network-operations :shape-name
                                       "ListSolNetworkOperations" :input
                                       list-sol-network-operations-input
                                       :output
                                       list-sol-network-operations-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nslcm/v1/ns_lcm_op_occs")

(smithy/sdk/operation:define-operation list-sol-network-packages :shape-name
                                       "ListSolNetworkPackages" :input
                                       list-sol-network-packages-input :output
                                       list-sol-network-packages-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sol/nsd/v1/ns_descriptors")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation put-sol-function-package-content
                                       :shape-name
                                       "PutSolFunctionPackageContent" :input
                                       put-sol-function-package-content-input
                                       :output
                                       put-sol-function-package-content-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content"
                                       :code 202)

(smithy/sdk/operation:define-operation put-sol-network-package-content
                                       :shape-name
                                       "PutSolNetworkPackageContent" :input
                                       put-sol-network-package-content-input
                                       :output
                                       put-sol-network-package-content-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation terminate-sol-network-instance
                                       :shape-name
                                       "TerminateSolNetworkInstance" :input
                                       terminate-sol-network-instance-input
                                       :output
                                       terminate-sol-network-instance-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/nslcm/v1/ns_instances/{nsInstanceId}/terminate"
                                       :code 201)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-sol-function-package :shape-name
                                       "UpdateSolFunctionPackage" :input
                                       update-sol-function-package-input
                                       :output
                                       update-sol-function-package-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}")

(smithy/sdk/operation:define-operation update-sol-network-instance :shape-name
                                       "UpdateSolNetworkInstance" :input
                                       update-sol-network-instance-input
                                       :output
                                       update-sol-network-instance-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sol/nslcm/v1/ns_instances/{nsInstanceId}/update"
                                       :code 201)

(smithy/sdk/operation:define-operation update-sol-network-package :shape-name
                                       "UpdateSolNetworkPackage" :input
                                       update-sol-network-package-input :output
                                       update-sol-network-package-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}")

(smithy/sdk/operation:define-operation validate-sol-function-package-content
                                       :shape-name
                                       "ValidateSolFunctionPackageContent"
                                       :input
                                       validate-sol-function-package-content-input
                                       :output
                                       validate-sol-function-package-content-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content/validate"
                                       :code 202)

(smithy/sdk/operation:define-operation validate-sol-network-package-content
                                       :shape-name
                                       "ValidateSolNetworkPackageContent"
                                       :input
                                       validate-sol-network-package-content-input
                                       :output
                                       validate-sol-network-package-content-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content/validate"
                                       :code 200)
