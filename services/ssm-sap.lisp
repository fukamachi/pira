(uiop/package:define-package #:pira/ssm-sap (:use)
                             (:export #:allocation-type #:app-registry-arn
                              #:application #:application-arn-list
                              #:application-credential
                              #:application-credential-list
                              #:application-discovery-status #:application-id
                              #:application-status #:application-summary
                              #:application-summary-list #:application-type
                              #:arn #:associated-host #:backint-config
                              #:backint-mode #:cluster-status #:component
                              #:component-arn-list #:component-id
                              #:component-id-list #:component-info
                              #:component-info-list #:component-status
                              #:component-summary #:component-summary-list
                              #:component-type #:conflict-exception
                              #:connected-entity-type #:credential-type
                              #:database #:database-connection
                              #:database-connection-method #:database-id
                              #:database-id-list #:database-name
                              #:database-status #:database-summary
                              #:database-summary-list #:database-type
                              #:delete-resource-permission
                              #:delete-resource-permission-input
                              #:delete-resource-permission-output
                              #:deregister-application
                              #:deregister-application-input
                              #:deregister-application-output #:filter
                              #:filter-list #:filter-name #:filter-operator
                              #:filter-value #:get-application
                              #:get-application-input #:get-application-output
                              #:get-component #:get-component-input
                              #:get-component-output #:get-database
                              #:get-database-input #:get-database-output
                              #:get-operation #:get-operation-input
                              #:get-operation-output #:get-resource-permission
                              #:get-resource-permission-input
                              #:get-resource-permission-output #:host
                              #:host-list #:host-role #:instance-id
                              #:instance-list #:internal-server-exception
                              #:ip-address-list #:ip-address-member
                              #:list-applications #:list-applications-input
                              #:list-applications-output #:list-components
                              #:list-components-input #:list-components-output
                              #:list-databases #:list-databases-input
                              #:list-databases-output #:list-operation-events
                              #:list-operation-events-input
                              #:list-operation-events-output #:list-operations
                              #:list-operations-input #:list-operations-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:next-token #:operation #:operation-event
                              #:operation-event-list
                              #:operation-event-resource-type
                              #:operation-event-status #:operation-id
                              #:operation-id-list #:operation-list
                              #:operation-mode #:operation-properties
                              #:operation-status #:operation-type
                              #:permission-action-type
                              #:put-resource-permission
                              #:put-resource-permission-input
                              #:put-resource-permission-output
                              #:register-application
                              #:register-application-input
                              #:register-application-output #:replication-mode
                              #:resilience #:resource #:resource-id
                              #:resource-not-found-exception #:resource-type
                              #:sapinstance-number #:sid #:secret-id #:ssm-sap
                              #:ssm-sap-arn #:start-application
                              #:start-application-input
                              #:start-application-output
                              #:start-application-refresh
                              #:start-application-refresh-input
                              #:start-application-refresh-output
                              #:stop-application #:stop-application-input
                              #:stop-application-output #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:unauthorized-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-application-settings
                              #:update-application-settings-input
                              #:update-application-settings-output
                              #:validation-exception))
(common-lisp:in-package #:pira/ssm-sap)

(smithy/sdk/service:define-service ssm-sap :shape-name "SsmSap" :version
                                   "2018-05-10" :title
                                   "AWS Systems Manager for SAP" :traits
                                   '(("aws.api#service" ("sdkId" . "Ssm Sap")
                                      ("arnNamespace" . "ssm-sap")
                                      ("cloudTrailEventSource"
                                       . "ssm-sap.amazonaws.com")
                                      ("endpointPrefix" . "ssm-sap"))
                                     ("aws.auth#sigv4" ("name" . "ssm-sap"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum allocation-type
    common-lisp:nil
  (:vpc-subnet "VPC_SUBNET")
  (:elastic-ip "ELASTIC_IP")
  (:overlay "OVERLAY")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-type app-registry-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((id :target-type application-id
                                      :member-name "Id")
                                     (type :target-type application-type
                                      :member-name "Type")
                                     (arn :target-type ssm-sap-arn :member-name
                                      "Arn")
                                     (app-registry-arn :target-type
                                      app-registry-arn :member-name
                                      "AppRegistryArn")
                                     (status :target-type application-status
                                      :member-name "Status")
                                     (discovery-status :target-type
                                      application-discovery-status :member-name
                                      "DiscoveryStatus")
                                     (components :target-type component-id-list
                                      :member-name "Components")
                                     (last-updated :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdated")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (associated-application-arns :target-type
                                      application-arn-list :member-name
                                      "AssociatedApplicationArns"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-list application-arn-list :member ssm-sap-arn)

(smithy/sdk/shapes:define-structure application-credential common-lisp:nil
                                    ((database-name :target-type database-name
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (credential-type :target-type
                                      credential-type :required common-lisp:t
                                      :member-name "CredentialType")
                                     (secret-id :target-type secret-id
                                      :required common-lisp:t :member-name
                                      "SecretId"))
                                    (:shape-name "ApplicationCredential"))

(smithy/sdk/shapes:define-list application-credential-list :member
                               application-credential)

(smithy/sdk/shapes:define-enum application-discovery-status
    common-lisp:nil
  (:success "SUCCESS")
  (:registration-failed "REGISTRATION_FAILED")
  (:refresh-failed "REFRESH_FAILED")
  (:registering "REGISTERING")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:activated "ACTIVATED")
  (:starting "STARTING")
  (:stopped "STOPPED")
  (:stopping "STOPPING")
  (:failed "FAILED")
  (:registering "REGISTERING")
  (:deleting "DELETING")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((id :target-type application-id
                                      :member-name "Id")
                                     (discovery-status :target-type
                                      application-discovery-status :member-name
                                      "DiscoveryStatus")
                                     (type :target-type application-type
                                      :member-name "Type")
                                     (arn :target-type ssm-sap-arn :member-name
                                      "Arn")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-list application-summary-list :member
                               application-summary)

(smithy/sdk/shapes:define-enum application-type
    common-lisp:nil
  (:hana "HANA")
  (:sap-abap "SAP_ABAP"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associated-host common-lisp:nil
                                    ((hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Hostname")
                                     (ec2instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Ec2InstanceId")
                                     (ip-addresses :target-type ip-address-list
                                      :member-name "IpAddresses")
                                     (os-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OsVersion"))
                                    (:shape-name "AssociatedHost"))

(smithy/sdk/shapes:define-structure backint-config common-lisp:nil
                                    ((backint-mode :target-type backint-mode
                                      :required common-lisp:t :member-name
                                      "BackintMode")
                                     (ensure-no-backup-in-process :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "EnsureNoBackupInProcess"))
                                    (:shape-name "BackintConfig"))

(smithy/sdk/shapes:define-enum backint-mode
    common-lisp:nil
  (:awsbackup "AWSBackup"))

(smithy/sdk/shapes:define-enum cluster-status
    common-lisp:nil
  (:online "ONLINE")
  (:standby "STANDBY")
  (:maintenance "MAINTENANCE")
  (:offline "OFFLINE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure component common-lisp:nil
                                    ((component-id :target-type component-id
                                      :member-name "ComponentId")
                                     (sid :target-type sid :member-name "Sid")
                                     (system-number :target-type
                                      sapinstance-number :member-name
                                      "SystemNumber")
                                     (parent-component :target-type
                                      component-id :member-name
                                      "ParentComponent")
                                     (child-components :target-type
                                      component-id-list :member-name
                                      "ChildComponents")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (component-type :target-type
                                      component-type :member-name
                                      "ComponentType")
                                     (status :target-type component-status
                                      :member-name "Status")
                                     (sap-hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SapHostname")
                                     (sap-feature :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SapFeature")
                                     (sap-kernel-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SapKernelVersion")
                                     (hdb-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "HdbVersion")
                                     (resilience :target-type resilience
                                      :member-name "Resilience")
                                     (associated-host :target-type
                                      associated-host :member-name
                                      "AssociatedHost")
                                     (databases :target-type database-id-list
                                      :member-name "Databases")
                                     (hosts :target-type host-list :member-name
                                      "Hosts")
                                     (primary-host :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PrimaryHost")
                                     (database-connection :target-type
                                      database-connection :member-name
                                      "DatabaseConnection")
                                     (last-updated :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdated")
                                     (arn :target-type ssm-sap-arn :member-name
                                      "Arn"))
                                    (:shape-name "Component"))

(smithy/sdk/shapes:define-list component-arn-list :member ssm-sap-arn)

(smithy/sdk/shapes:define-type component-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-id-list :member component-id)

(smithy/sdk/shapes:define-structure component-info common-lisp:nil
                                    ((component-type :target-type
                                      component-type :required common-lisp:t
                                      :member-name "ComponentType")
                                     (sid :target-type sid :required
                                      common-lisp:t :member-name "Sid")
                                     (ec2instance-id :target-type instance-id
                                      :required common-lisp:t :member-name
                                      "Ec2InstanceId"))
                                    (:shape-name "ComponentInfo"))

(smithy/sdk/shapes:define-list component-info-list :member component-info)

(smithy/sdk/shapes:define-enum component-status
    common-lisp:nil
  (:activated "ACTIVATED")
  (:starting "STARTING")
  (:stopped "STOPPED")
  (:stopping "STOPPING")
  (:running "RUNNING")
  (:running-with-error "RUNNING_WITH_ERROR")
  (:undefined "UNDEFINED"))

(smithy/sdk/shapes:define-structure component-summary common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (component-id :target-type component-id
                                      :member-name "ComponentId")
                                     (component-type :target-type
                                      component-type :member-name
                                      "ComponentType")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (arn :target-type ssm-sap-arn :member-name
                                      "Arn"))
                                    (:shape-name "ComponentSummary"))

(smithy/sdk/shapes:define-list component-summary-list :member component-summary)

(smithy/sdk/shapes:define-enum component-type
    common-lisp:nil
  (:hana "HANA")
  (:hana-node "HANA_NODE")
  (:abap "ABAP")
  (:ascs "ASCS")
  (:dialog "DIALOG")
  (:webdisp "WEBDISP")
  (:wd "WD")
  (:ers "ERS"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum connected-entity-type
    common-lisp:nil
  (:dbms "DBMS"))

(smithy/sdk/shapes:define-enum credential-type
    common-lisp:nil
  (:admin "ADMIN"))

(smithy/sdk/shapes:define-structure database common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (component-id :target-type component-id
                                      :member-name "ComponentId")
                                     (credentials :target-type
                                      application-credential-list :member-name
                                      "Credentials")
                                     (database-id :target-type database-id
                                      :member-name "DatabaseId")
                                     (database-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DatabaseName")
                                     (database-type :target-type database-type
                                      :member-name "DatabaseType")
                                     (arn :target-type ssm-sap-arn :member-name
                                      "Arn")
                                     (status :target-type database-status
                                      :member-name "Status")
                                     (primary-host :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PrimaryHost")
                                     (sqlport :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SQLPort")
                                     (last-updated :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdated")
                                     (connected-component-arns :target-type
                                      component-arn-list :member-name
                                      "ConnectedComponentArns"))
                                    (:shape-name "Database"))

(smithy/sdk/shapes:define-structure database-connection common-lisp:nil
                                    ((database-connection-method :target-type
                                      database-connection-method :member-name
                                      "DatabaseConnectionMethod")
                                     (database-arn :target-type ssm-sap-arn
                                      :member-name "DatabaseArn")
                                     (connection-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ConnectionIp"))
                                    (:shape-name "DatabaseConnection"))

(smithy/sdk/shapes:define-enum database-connection-method
    common-lisp:nil
  (:direct "DIRECT")
  (:overlay "OVERLAY"))

(smithy/sdk/shapes:define-type database-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list database-id-list :member database-id)

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum database-status
    common-lisp:nil
  (:running "RUNNING")
  (:starting "STARTING")
  (:stopped "STOPPED")
  (:warning "WARNING")
  (:unknown "UNKNOWN")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure database-summary common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (component-id :target-type component-id
                                      :member-name "ComponentId")
                                     (database-id :target-type database-id
                                      :member-name "DatabaseId")
                                     (database-type :target-type database-type
                                      :member-name "DatabaseType")
                                     (arn :target-type ssm-sap-arn :member-name
                                      "Arn")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "DatabaseSummary"))

(smithy/sdk/shapes:define-list database-summary-list :member database-summary)

(smithy/sdk/shapes:define-enum database-type
    common-lisp:nil
  (:system "SYSTEM")
  (:tenant "TENANT"))

(smithy/sdk/shapes:define-structure delete-resource-permission-input
                                    common-lisp:nil
                                    ((action-type :target-type
                                      permission-action-type :member-name
                                      "ActionType")
                                     (source-resource-arn :target-type arn
                                      :member-name "SourceResourceArn")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name
                                     "DeleteResourcePermissionInput"))

(smithy/sdk/shapes:define-structure delete-resource-permission-output
                                    common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Policy"))
                                    (:shape-name
                                     "DeleteResourcePermissionOutput"))

(smithy/sdk/shapes:define-structure deregister-application-input
                                    common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "ApplicationId"))
                                    (:shape-name "DeregisterApplicationInput"))

(smithy/sdk/shapes:define-structure deregister-application-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeregisterApplicationOutput"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type filter-value :required
                                      common-lisp:t :member-name "Value")
                                     (operator :target-type filter-operator
                                      :required common-lisp:t :member-name
                                      "Operator"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum filter-operator
    common-lisp:nil
  (:equals "Equals")
  (:greater-than-or-equals "GreaterThanOrEquals")
  (:less-than-or-equals "LessThanOrEquals"))

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-application-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (application-arn :target-type ssm-sap-arn
                                      :member-name "ApplicationArn")
                                     (app-registry-arn :target-type
                                      app-registry-arn :member-name
                                      "AppRegistryArn"))
                                    (:shape-name "GetApplicationInput"))

(smithy/sdk/shapes:define-structure get-application-output common-lisp:nil
                                    ((application :target-type application
                                      :member-name "Application")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "GetApplicationOutput"))

(smithy/sdk/shapes:define-structure get-component-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "ApplicationId")
                                     (component-id :target-type component-id
                                      :required common-lisp:t :member-name
                                      "ComponentId"))
                                    (:shape-name "GetComponentInput"))

(smithy/sdk/shapes:define-structure get-component-output common-lisp:nil
                                    ((component :target-type component
                                      :member-name "Component")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "GetComponentOutput"))

(smithy/sdk/shapes:define-structure get-database-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (component-id :target-type component-id
                                      :member-name "ComponentId")
                                     (database-id :target-type database-id
                                      :member-name "DatabaseId")
                                     (database-arn :target-type ssm-sap-arn
                                      :member-name "DatabaseArn"))
                                    (:shape-name "GetDatabaseInput"))

(smithy/sdk/shapes:define-structure get-database-output common-lisp:nil
                                    ((database :target-type database
                                      :member-name "Database")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "GetDatabaseOutput"))

(smithy/sdk/shapes:define-structure get-operation-input common-lisp:nil
                                    ((operation-id :target-type operation-id
                                      :required common-lisp:t :member-name
                                      "OperationId"))
                                    (:shape-name "GetOperationInput"))

(smithy/sdk/shapes:define-structure get-operation-output common-lisp:nil
                                    ((operation :target-type operation
                                      :member-name "Operation"))
                                    (:shape-name "GetOperationOutput"))

(smithy/sdk/shapes:define-structure get-resource-permission-input
                                    common-lisp:nil
                                    ((action-type :target-type
                                      permission-action-type :member-name
                                      "ActionType")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "GetResourcePermissionInput"))

(smithy/sdk/shapes:define-structure get-resource-permission-output
                                    common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Policy"))
                                    (:shape-name "GetResourcePermissionOutput"))

(smithy/sdk/shapes:define-structure host common-lisp:nil
                                    ((host-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "HostName")
                                     (host-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "HostIp")
                                     (ec2instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EC2InstanceId")
                                     (instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceId")
                                     (host-role :target-type host-role
                                      :member-name "HostRole")
                                     (os-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OsVersion"))
                                    (:shape-name "Host"))

(smithy/sdk/shapes:define-list host-list :member host)

(smithy/sdk/shapes:define-enum host-role
    common-lisp:nil
  (:leader "LEADER")
  (:worker "WORKER")
  (:standby "STANDBY")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-list :member instance-id)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list ip-address-list :member ip-address-member)

(smithy/sdk/shapes:define-structure ip-address-member common-lisp:nil
                                    ((ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "IpAddress")
                                     (primary :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Primary")
                                     (allocation-type :target-type
                                      allocation-type :member-name
                                      "AllocationType"))
                                    (:shape-name "IpAddressMember"))

(smithy/sdk/shapes:define-structure list-applications-input common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (filters :target-type filter-list
                                      :member-name "Filters"))
                                    (:shape-name "ListApplicationsInput"))

(smithy/sdk/shapes:define-structure list-applications-output common-lisp:nil
                                    ((applications :target-type
                                      application-summary-list :member-name
                                      "Applications")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListApplicationsOutput"))

(smithy/sdk/shapes:define-structure list-components-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults"))
                                    (:shape-name "ListComponentsInput"))

(smithy/sdk/shapes:define-structure list-components-output common-lisp:nil
                                    ((components :target-type
                                      component-summary-list :member-name
                                      "Components")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListComponentsOutput"))

(smithy/sdk/shapes:define-structure list-databases-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (component-id :target-type component-id
                                      :member-name "ComponentId")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults"))
                                    (:shape-name "ListDatabasesInput"))

(smithy/sdk/shapes:define-structure list-databases-output common-lisp:nil
                                    ((databases :target-type
                                      database-summary-list :member-name
                                      "Databases")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListDatabasesOutput"))

(smithy/sdk/shapes:define-input list-operation-events-input common-lisp:nil
                                ((operation-id :target-type operation-id
                                  :required common-lisp:t :member-name
                                  "OperationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "ListOperationEventsInput"))

(smithy/sdk/shapes:define-output list-operation-events-output common-lisp:nil
                                 ((operation-events :target-type
                                   operation-event-list :member-name
                                   "OperationEvents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOperationEventsOutput"))

(smithy/sdk/shapes:define-structure list-operations-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "ApplicationId")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (filters :target-type filter-list
                                      :member-name "Filters"))
                                    (:shape-name "ListOperationsInput"))

(smithy/sdk/shapes:define-structure list-operations-output common-lisp:nil
                                    ((operations :target-type operation-list
                                      :member-name "Operations")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListOperationsOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type ssm-sap-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure operation common-lisp:nil
                                    ((id :target-type operation-id :member-name
                                      "Id")
                                     (type :target-type operation-type
                                      :member-name "Type")
                                     (status :target-type operation-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (properties :target-type
                                      operation-properties :member-name
                                      "Properties")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "EndTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "Operation"))

(smithy/sdk/shapes:define-structure operation-event common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description")
                                     (resource :target-type resource
                                      :member-name "Resource")
                                     (status :target-type
                                      operation-event-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "OperationEvent"))

(smithy/sdk/shapes:define-list operation-event-list :member operation-event)

(smithy/sdk/shapes:define-type operation-event-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum operation-event-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type operation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list operation-id-list :member operation-id)

(smithy/sdk/shapes:define-list operation-list :member operation)

(smithy/sdk/shapes:define-enum operation-mode
    common-lisp:nil
  (:primary "PRIMARY")
  (:logreplay "LOGREPLAY")
  (:delta-datashipping "DELTA_DATASHIPPING")
  (:logreplay-readaccess "LOGREPLAY_READACCESS")
  (:none "NONE"))

(smithy/sdk/shapes:define-map operation-properties :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:inprogress "INPROGRESS")
  (:success "SUCCESS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type operation-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum permission-action-type
    common-lisp:nil
  (:restore "RESTORE"))

(smithy/sdk/shapes:define-structure put-resource-permission-input
                                    common-lisp:nil
                                    ((action-type :target-type
                                      permission-action-type :required
                                      common-lisp:t :member-name "ActionType")
                                     (source-resource-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "SourceResourceArn")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "PutResourcePermissionInput"))

(smithy/sdk/shapes:define-structure put-resource-permission-output
                                    common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Policy"))
                                    (:shape-name "PutResourcePermissionOutput"))

(smithy/sdk/shapes:define-structure register-application-input common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "ApplicationId")
                                     (application-type :target-type
                                      application-type :required common-lisp:t
                                      :member-name "ApplicationType")
                                     (instances :target-type instance-list
                                      :required common-lisp:t :member-name
                                      "Instances")
                                     (sap-instance-number :target-type
                                      sapinstance-number :member-name
                                      "SapInstanceNumber")
                                     (sid :target-type sid :member-name "Sid")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (credentials :target-type
                                      application-credential-list :member-name
                                      "Credentials")
                                     (database-arn :target-type ssm-sap-arn
                                      :member-name "DatabaseArn")
                                     (components-info :target-type
                                      component-info-list :member-name
                                      "ComponentsInfo"))
                                    (:shape-name "RegisterApplicationInput"))

(smithy/sdk/shapes:define-structure register-application-output common-lisp:nil
                                    ((application :target-type application
                                      :member-name "Application")
                                     (operation-id :target-type operation-id
                                      :member-name "OperationId"))
                                    (:shape-name "RegisterApplicationOutput"))

(smithy/sdk/shapes:define-enum replication-mode
    common-lisp:nil
  (:primary "PRIMARY")
  (:none "NONE")
  (:sync "SYNC")
  (:syncmem "SYNCMEM")
  (:async "ASYNC"))

(smithy/sdk/shapes:define-structure resilience common-lisp:nil
                                    ((hsr-tier :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "HsrTier")
                                     (hsr-replication-mode :target-type
                                      replication-mode :member-name
                                      "HsrReplicationMode")
                                     (hsr-operation-mode :target-type
                                      operation-mode :member-name
                                      "HsrOperationMode")
                                     (cluster-status :target-type
                                      cluster-status :member-name
                                      "ClusterStatus")
                                     (enqueue-replication :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EnqueueReplication"))
                                    (:shape-name "Resilience"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type
                                      operation-event-resource-type
                                      :member-name "ResourceType"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sapinstance-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssm-sap-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-application-input common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "ApplicationId"))
                                (:shape-name "StartApplicationInput"))

(smithy/sdk/shapes:define-output start-application-output common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "StartApplicationOutput"))

(smithy/sdk/shapes:define-input start-application-refresh-input common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "ApplicationId"))
                                (:shape-name "StartApplicationRefreshInput"))

(smithy/sdk/shapes:define-output start-application-refresh-output
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "StartApplicationRefreshOutput"))

(smithy/sdk/shapes:define-input stop-application-input common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "ApplicationId")
                                 (stop-connected-entity :target-type
                                  connected-entity-type :member-name
                                  "StopConnectedEntity")
                                 (include-ec2instance-shutdown :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "IncludeEc2InstanceShutdown"))
                                (:shape-name "StopApplicationInput"))

(smithy/sdk/shapes:define-output stop-application-output common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "StopApplicationOutput"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type ssm-sap-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type ssm-sap-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-application-settings-input
                                    common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "ApplicationId")
                                     (credentials-to-add-or-update :target-type
                                      application-credential-list :member-name
                                      "CredentialsToAddOrUpdate")
                                     (credentials-to-remove :target-type
                                      application-credential-list :member-name
                                      "CredentialsToRemove")
                                     (backint :target-type backint-config
                                      :member-name "Backint")
                                     (database-arn :target-type ssm-sap-arn
                                      :member-name "DatabaseArn"))
                                    (:shape-name
                                     "UpdateApplicationSettingsInput"))

(smithy/sdk/shapes:define-structure update-application-settings-output
                                    common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Message")
                                     (operation-ids :target-type
                                      operation-id-list :member-name
                                      "OperationIds"))
                                    (:shape-name
                                     "UpdateApplicationSettingsOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation delete-resource-permission :shape-name
                                       "DeleteResourcePermission" :input
                                       delete-resource-permission-input :output
                                       delete-resource-permission-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-resource-permission" :code 200)

(smithy/sdk/operation:define-operation deregister-application :shape-name
                                       "DeregisterApplication" :input
                                       deregister-application-input :output
                                       deregister-application-output :errors
                                       (internal-server-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deregister-application" :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-input :output
                                       get-application-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-application"
                                       :code 200)

(smithy/sdk/operation:define-operation get-component :shape-name "GetComponent"
                                       :input get-component-input :output
                                       get-component-output :errors
                                       (internal-server-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-component"
                                       :code 200)

(smithy/sdk/operation:define-operation get-database :shape-name "GetDatabase"
                                       :input get-database-input :output
                                       get-database-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-database"
                                       :code 200)

(smithy/sdk/operation:define-operation get-operation :shape-name "GetOperation"
                                       :input get-operation-input :output
                                       get-operation-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-operation"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-permission :shape-name
                                       "GetResourcePermission" :input
                                       get-resource-permission-input :output
                                       get-resource-permission-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-resource-permission" :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-input :output
                                       list-applications-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-applications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-input :output
                                       list-components-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-components"
                                       :code 200)

(smithy/sdk/operation:define-operation list-databases :shape-name
                                       "ListDatabases" :input
                                       list-databases-input :output
                                       list-databases-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-databases"
                                       :code 200)

(smithy/sdk/operation:define-operation list-operation-events :shape-name
                                       "ListOperationEvents" :input
                                       list-operation-events-input :output
                                       list-operation-events-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-operation-events" :code 200)

(smithy/sdk/operation:define-operation list-operations :shape-name
                                       "ListOperations" :input
                                       list-operations-input :output
                                       list-operations-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-operations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation put-resource-permission :shape-name
                                       "PutResourcePermission" :input
                                       put-resource-permission-input :output
                                       put-resource-permission-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/put-resource-permission" :code 200)

(smithy/sdk/operation:define-operation register-application :shape-name
                                       "RegisterApplication" :input
                                       register-application-input :output
                                       register-application-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/register-application" :code 200)

(smithy/sdk/operation:define-operation start-application :shape-name
                                       "StartApplication" :input
                                       start-application-input :output
                                       start-application-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/start-application"
                                       :code 200)

(smithy/sdk/operation:define-operation start-application-refresh :shape-name
                                       "StartApplicationRefresh" :input
                                       start-application-refresh-input :output
                                       start-application-refresh-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/start-application-refresh" :code 200)

(smithy/sdk/operation:define-operation stop-application :shape-name
                                       "StopApplication" :input
                                       stop-application-input :output
                                       stop-application-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/stop-application"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-application-settings :shape-name
                                       "UpdateApplicationSettings" :input
                                       update-application-settings-input
                                       :output
                                       update-application-settings-output
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-application-settings" :code 200)
