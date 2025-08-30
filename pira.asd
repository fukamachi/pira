(defsystem "pira"
  :author "Eitaro Fukamachi"
  :license "MIT"
  :description "Unofficial AWS SDK for Common Lisp"
  :version (:read-file-form "version.sexp")
  :depends-on ("pira-core"))

(defsystem "pira/accessanalyzer"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "accessanalyzer")))

(defsystem "pira/account"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "account")))

(defsystem "pira/acm-pca"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "acm-pca")))

(defsystem "pira/acm"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "acm")))

(defsystem "pira/aiops"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "aiops")))

(defsystem "pira/amp"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "amp")))

(defsystem "pira/amplify"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "amplify")))

(defsystem "pira/amplifybackend"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "amplifybackend")))

(defsystem "pira/amplifyuibuilder"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "amplifyuibuilder")))

(defsystem "pira/api-gateway"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "api-gateway")))

(defsystem "pira/apigatewaymanagementapi"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "apigatewaymanagementapi")))

(defsystem "pira/apigatewayv2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "apigatewayv2")))

(defsystem "pira/app-mesh"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "app-mesh")))

(defsystem "pira/appconfig"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appconfig")))

(defsystem "pira/appconfigdata"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appconfigdata")))

(defsystem "pira/appfabric"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appfabric")))

(defsystem "pira/appflow"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appflow")))

(defsystem "pira/appintegrations"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appintegrations")))

(defsystem "pira/application-auto-scaling"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "application-auto-scaling")))

(defsystem "pira/application-discovery-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "application-discovery-service")))

(defsystem "pira/application-insights"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "application-insights")))

(defsystem "pira/application-signals"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "application-signals")))

(defsystem "pira/applicationcostprofiler"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "applicationcostprofiler")))

(defsystem "pira/apprunner"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "apprunner")))

(defsystem "pira/appstream"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appstream")))

(defsystem "pira/appsync"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "appsync")))

(defsystem "pira/apptest"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "apptest")))

(defsystem "pira/arc-region-switch"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "arc-region-switch")))

(defsystem "pira/arc-zonal-shift"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "arc-zonal-shift")))

(defsystem "pira/artifact"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "artifact")))

(defsystem "pira/athena"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "athena")))

(defsystem "pira/auditmanager"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "auditmanager")))

(defsystem "pira/auto-scaling-plans"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "auto-scaling-plans")))

(defsystem "pira/auto-scaling"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "auto-scaling")))

(defsystem "pira/b2bi"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "b2bi")))

(defsystem "pira/backup-gateway"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "backup-gateway")))

(defsystem "pira/backup"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "backup")))

(defsystem "pira/backupsearch"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "backupsearch")))

(defsystem "pira/batch"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "batch")))

(defsystem "pira/bcm-data-exports"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bcm-data-exports")))

(defsystem "pira/bcm-pricing-calculator"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bcm-pricing-calculator")))

(defsystem "pira/bedrock-agent-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-agent-runtime")))

(defsystem "pira/bedrock-agent"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-agent")))

(defsystem "pira/bedrock-agentcore-control"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-agentcore-control")))

(defsystem "pira/bedrock-agentcore"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-agentcore")))

(defsystem "pira/bedrock-data-automation-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-data-automation-runtime")))

(defsystem "pira/bedrock-data-automation"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-data-automation")))

(defsystem "pira/bedrock-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock-runtime")))

(defsystem "pira/bedrock"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "bedrock")))

(defsystem "pira/billing"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "billing")))

(defsystem "pira/billingconductor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "billingconductor")))

(defsystem "pira/braket"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "braket")))

(defsystem "pira/budgets"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "budgets")))

(defsystem "pira/chatbot"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chatbot")))

(defsystem "pira/chime-sdk-identity"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chime-sdk-identity")))

(defsystem "pira/chime-sdk-media-pipelines"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chime-sdk-media-pipelines")))

(defsystem "pira/chime-sdk-meetings"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chime-sdk-meetings")))

(defsystem "pira/chime-sdk-messaging"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chime-sdk-messaging")))

(defsystem "pira/chime-sdk-voice"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chime-sdk-voice")))

(defsystem "pira/chime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "chime")))

(defsystem "pira/cleanrooms"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cleanrooms")))

(defsystem "pira/cleanroomsml"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cleanroomsml")))

(defsystem "pira/cloud9"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloud9")))

(defsystem "pira/cloudcontrol"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudcontrol")))

(defsystem "pira/clouddirectory"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "clouddirectory")))

(defsystem "pira/cloudformation"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudformation")))

(defsystem "pira/cloudfront-keyvaluestore"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudfront-keyvaluestore")))

(defsystem "pira/cloudfront"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudfront")))

(defsystem "pira/cloudhsm-v2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudhsm-v2")))

(defsystem "pira/cloudhsm"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudhsm")))

(defsystem "pira/cloudsearch-domain"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudsearch-domain")))

(defsystem "pira/cloudsearch"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudsearch")))

(defsystem "pira/cloudtrail-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudtrail-data")))

(defsystem "pira/cloudtrail"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudtrail")))

(defsystem "pira/cloudwatch-events"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudwatch-events")))

(defsystem "pira/cloudwatch-logs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudwatch-logs")))

(defsystem "pira/cloudwatch"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cloudwatch")))

(defsystem "pira/codeartifact"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codeartifact")))

(defsystem "pira/codebuild"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codebuild")))

(defsystem "pira/codecatalyst"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codecatalyst")))

(defsystem "pira/codecommit"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codecommit")))

(defsystem "pira/codeconnections"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codeconnections")))

(defsystem "pira/codedeploy"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codedeploy")))

(defsystem "pira/codeguru-reviewer"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codeguru-reviewer")))

(defsystem "pira/codeguru-security"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codeguru-security")))

(defsystem "pira/codeguruprofiler"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codeguruprofiler")))

(defsystem "pira/codepipeline"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codepipeline")))

(defsystem "pira/codestar-connections"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codestar-connections")))

(defsystem "pira/codestar-notifications"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "codestar-notifications")))

(defsystem "pira/cognito-identity-provider"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cognito-identity-provider")))

(defsystem "pira/cognito-identity"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cognito-identity")))

(defsystem "pira/cognito-sync"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cognito-sync")))

(defsystem "pira/comprehend"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "comprehend")))

(defsystem "pira/comprehendmedical"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "comprehendmedical")))

(defsystem "pira/compute-optimizer"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "compute-optimizer")))

(defsystem "pira/config-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "config-service")))

(defsystem "pira/connect-contact-lens"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "connect-contact-lens")))

(defsystem "pira/connect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "connect")))

(defsystem "pira/connectcampaigns"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "connectcampaigns")))

(defsystem "pira/connectcampaignsv2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "connectcampaignsv2")))

(defsystem "pira/connectcases"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "connectcases")))

(defsystem "pira/connectparticipant"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "connectparticipant")))

(defsystem "pira/controlcatalog"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "controlcatalog")))

(defsystem "pira/controltower"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "controltower")))

(defsystem "pira/cost-and-usage-report-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cost-and-usage-report-service")))

(defsystem "pira/cost-explorer"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cost-explorer")))

(defsystem "pira/cost-optimization-hub"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "cost-optimization-hub")))

(defsystem "pira/customer-profiles"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "customer-profiles")))

(defsystem "pira/data-pipeline"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "data-pipeline")))

(defsystem "pira/database-migration-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "database-migration-service")))

(defsystem "pira/databrew"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "databrew")))

(defsystem "pira/dataexchange"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "dataexchange")))

(defsystem "pira/datasync"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "datasync")))

(defsystem "pira/datazone"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "datazone")))

(defsystem "pira/dax"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "dax")))

(defsystem "pira/deadline"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "deadline")))

(defsystem "pira/detective"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "detective")))

(defsystem "pira/device-farm"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "device-farm")))

(defsystem "pira/devops-guru"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "devops-guru")))

(defsystem "pira/direct-connect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "direct-connect")))

(defsystem "pira/directory-service-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "directory-service-data")))

(defsystem "pira/directory-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "directory-service")))

(defsystem "pira/dlm"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "dlm")))

(defsystem "pira/docdb-elastic"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "docdb-elastic")))

(defsystem "pira/docdb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "docdb")))

(defsystem "pira/drs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "drs")))

(defsystem "pira/dsql"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "dsql")))

(defsystem "pira/dynamodb-streams"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "dynamodb-streams")))

(defsystem "pira/dynamodb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "dynamodb")))

(defsystem "pira/ebs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ebs")))

(defsystem "pira/ec2-instance-connect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ec2-instance-connect")))

(defsystem "pira/ec2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ec2")))

(defsystem "pira/ecr-public"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ecr-public")))

(defsystem "pira/ecr"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ecr")))

(defsystem "pira/ecs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ecs")))

(defsystem "pira/efs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "efs")))

(defsystem "pira/eks-auth"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "eks-auth")))

(defsystem "pira/eks"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "eks")))

(defsystem "pira/elastic-beanstalk"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "elastic-beanstalk")))

(defsystem "pira/elastic-load-balancing-v2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "elastic-load-balancing-v2")))

(defsystem "pira/elastic-load-balancing"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "elastic-load-balancing")))

(defsystem "pira/elastic-transcoder"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "elastic-transcoder")))

(defsystem "pira/elasticache"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "elasticache")))

(defsystem "pira/elasticsearch-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "elasticsearch-service")))

(defsystem "pira/emr-containers"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "emr-containers")))

(defsystem "pira/emr-serverless"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "emr-serverless")))

(defsystem "pira/emr"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "emr")))

(defsystem "pira/entityresolution"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "entityresolution")))

(defsystem "pira/eventbridge"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "eventbridge")))

(defsystem "pira/evidently"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "evidently")))

(defsystem "pira/evs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "evs")))

(defsystem "pira/finspace-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "finspace-data")))

(defsystem "pira/finspace"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "finspace")))

(defsystem "pira/firehose"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "firehose")))

(defsystem "pira/fis"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "fis")))

(defsystem "pira/fms"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "fms")))

(defsystem "pira/forecast"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "forecast")))

(defsystem "pira/forecastquery"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "forecastquery")))

(defsystem "pira/frauddetector"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "frauddetector")))

(defsystem "pira/freetier"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "freetier")))

(defsystem "pira/fsx"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "fsx")))

(defsystem "pira/gamelift"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "gamelift")))

(defsystem "pira/gameliftstreams"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "gameliftstreams")))

(defsystem "pira/geo-maps"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "geo-maps")))

(defsystem "pira/geo-places"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "geo-places")))

(defsystem "pira/geo-routes"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "geo-routes")))

(defsystem "pira/glacier"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "glacier")))

(defsystem "pira/global-accelerator"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "global-accelerator")))

(defsystem "pira/glue"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "glue")))

(defsystem "pira/grafana"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "grafana")))

(defsystem "pira/greengrass"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "greengrass")))

(defsystem "pira/greengrassv2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "greengrassv2")))

(defsystem "pira/groundstation"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "groundstation")))

(defsystem "pira/guardduty"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "guardduty")))

(defsystem "pira/health"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "health")))

(defsystem "pira/healthlake"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "healthlake")))

(defsystem "pira/iam"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iam")))

(defsystem "pira/identitystore"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "identitystore")))

(defsystem "pira/imagebuilder"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "imagebuilder")))

(defsystem "pira/inspector-scan"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "inspector-scan")))

(defsystem "pira/inspector"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "inspector")))

(defsystem "pira/inspector2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "inspector2")))

(defsystem "pira/internetmonitor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "internetmonitor")))

(defsystem "pira/invoicing"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "invoicing")))

(defsystem "pira/iot-data-plane"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot-data-plane")))

(defsystem "pira/iot-events-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot-events-data")))

(defsystem "pira/iot-events"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot-events")))

(defsystem "pira/iot-jobs-data-plane"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot-jobs-data-plane")))

(defsystem "pira/iot-managed-integrations"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot-managed-integrations")))

(defsystem "pira/iot-wireless"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot-wireless")))

(defsystem "pira/iot"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iot")))

(defsystem "pira/iotanalytics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotanalytics")))

(defsystem "pira/iotdeviceadvisor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotdeviceadvisor")))

(defsystem "pira/iotfleethub"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotfleethub")))

(defsystem "pira/iotfleetwise"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotfleetwise")))

(defsystem "pira/iotsecuretunneling"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotsecuretunneling")))

(defsystem "pira/iotsitewise"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotsitewise")))

(defsystem "pira/iotthingsgraph"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iotthingsgraph")))

(defsystem "pira/iottwinmaker"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "iottwinmaker")))

(defsystem "pira/ivs-realtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ivs-realtime")))

(defsystem "pira/ivs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ivs")))

(defsystem "pira/ivschat"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ivschat")))

(defsystem "pira/kafka"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kafka")))

(defsystem "pira/kafkaconnect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kafkaconnect")))

(defsystem "pira/kendra-ranking"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kendra-ranking")))

(defsystem "pira/kendra"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kendra")))

(defsystem "pira/keyspaces"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "keyspaces")))

(defsystem "pira/keyspacesstreams"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "keyspacesstreams")))

(defsystem "pira/kinesis-analytics-v2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-analytics-v2")))

(defsystem "pira/kinesis-analytics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-analytics")))

(defsystem "pira/kinesis-video-archived-media"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-video-archived-media")))

(defsystem "pira/kinesis-video-media"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-video-media")))

(defsystem "pira/kinesis-video-signaling"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-video-signaling")))

(defsystem "pira/kinesis-video-webrtc-storage"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-video-webrtc-storage")))

(defsystem "pira/kinesis-video"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis-video")))

(defsystem "pira/kinesis"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kinesis")))

(defsystem "pira/kms"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "kms")))

(defsystem "pira/lakeformation"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lakeformation")))

(defsystem "pira/lambda"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lambda")))

(defsystem "pira/launch-wizard"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "launch-wizard")))

(defsystem "pira/lex-model-building-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lex-model-building-service")))

(defsystem "pira/lex-models-v2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lex-models-v2")))

(defsystem "pira/lex-runtime-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lex-runtime-service")))

(defsystem "pira/lex-runtime-v2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lex-runtime-v2")))

(defsystem "pira/license-manager-linux-subscriptions"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "license-manager-linux-subscriptions")))

(defsystem "pira/license-manager-user-subscriptions"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "license-manager-user-subscriptions")))

(defsystem "pira/license-manager"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "license-manager")))

(defsystem "pira/lightsail"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lightsail")))

(defsystem "pira/location"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "location")))

(defsystem "pira/lookoutequipment"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lookoutequipment")))

(defsystem "pira/lookoutmetrics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lookoutmetrics")))

(defsystem "pira/lookoutvision"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "lookoutvision")))

(defsystem "pira/m2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "m2")))

(defsystem "pira/machine-learning"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "machine-learning")))

(defsystem "pira/macie2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "macie2")))

(defsystem "pira/mailmanager"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mailmanager")))

(defsystem "pira/managedblockchain-query"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "managedblockchain-query")))

(defsystem "pira/managedblockchain"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "managedblockchain")))

(defsystem "pira/marketplace-agreement"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-agreement")))

(defsystem "pira/marketplace-catalog"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-catalog")))

(defsystem "pira/marketplace-commerce-analytics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-commerce-analytics")))

(defsystem "pira/marketplace-deployment"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-deployment")))

(defsystem "pira/marketplace-entitlement-service"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-entitlement-service")))

(defsystem "pira/marketplace-metering"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-metering")))

(defsystem "pira/marketplace-reporting"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "marketplace-reporting")))

(defsystem "pira/mediaconnect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediaconnect")))

(defsystem "pira/mediaconvert"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediaconvert")))

(defsystem "pira/medialive"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "medialive")))

(defsystem "pira/mediapackage-vod"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediapackage-vod")))

(defsystem "pira/mediapackage"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediapackage")))

(defsystem "pira/mediapackagev2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediapackagev2")))

(defsystem "pira/mediastore-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediastore-data")))

(defsystem "pira/mediastore"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediastore")))

(defsystem "pira/mediatailor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mediatailor")))

(defsystem "pira/medical-imaging"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "medical-imaging")))

(defsystem "pira/memorydb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "memorydb")))

(defsystem "pira/mgn"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mgn")))

(defsystem "pira/migration-hub-refactor-spaces"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "migration-hub-refactor-spaces")))

(defsystem "pira/migration-hub"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "migration-hub")))

(defsystem "pira/migrationhub-config"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "migrationhub-config")))

(defsystem "pira/migrationhuborchestrator"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "migrationhuborchestrator")))

(defsystem "pira/migrationhubstrategy"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "migrationhubstrategy")))

(defsystem "pira/mpa"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mpa")))

(defsystem "pira/mq"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mq")))

(defsystem "pira/mturk"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mturk")))

(defsystem "pira/mwaa"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "mwaa")))

(defsystem "pira/neptune-graph"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "neptune-graph")))

(defsystem "pira/neptune"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "neptune")))

(defsystem "pira/neptunedata"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "neptunedata")))

(defsystem "pira/network-firewall"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "network-firewall")))

(defsystem "pira/networkflowmonitor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "networkflowmonitor")))

(defsystem "pira/networkmanager"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "networkmanager")))

(defsystem "pira/networkmonitor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "networkmonitor")))

(defsystem "pira/notifications"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "notifications")))

(defsystem "pira/notificationscontacts"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "notificationscontacts")))

(defsystem "pira/oam"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "oam")))

(defsystem "pira/observabilityadmin"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "observabilityadmin")))

(defsystem "pira/odb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "odb")))

(defsystem "pira/omics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "omics")))

(defsystem "pira/opensearch"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "opensearch")))

(defsystem "pira/opensearchserverless"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "opensearchserverless")))

(defsystem "pira/opsworks"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "opsworks")))

(defsystem "pira/opsworkscm"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "opsworkscm")))

(defsystem "pira/organizations"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "organizations")))

(defsystem "pira/osis"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "osis")))

(defsystem "pira/outposts"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "outposts")))

(defsystem "pira/panorama"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "panorama")))

(defsystem "pira/partnercentral-selling"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "partnercentral-selling")))

(defsystem "pira/payment-cryptography-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "payment-cryptography-data")))

(defsystem "pira/payment-cryptography"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "payment-cryptography")))

(defsystem "pira/pca-connector-ad"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pca-connector-ad")))

(defsystem "pira/pca-connector-scep"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pca-connector-scep")))

(defsystem "pira/pcs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pcs")))

(defsystem "pira/personalize-events"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "personalize-events")))

(defsystem "pira/personalize-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "personalize-runtime")))

(defsystem "pira/personalize"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "personalize")))

(defsystem "pira/pi"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pi")))

(defsystem "pira/pinpoint-email"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pinpoint-email")))

(defsystem "pira/pinpoint-sms-voice-v2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pinpoint-sms-voice-v2")))

(defsystem "pira/pinpoint-sms-voice"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pinpoint-sms-voice")))

(defsystem "pira/pinpoint"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pinpoint")))

(defsystem "pira/pipes"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pipes")))

(defsystem "pira/polly"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "polly")))

(defsystem "pira/pricing"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "pricing")))

(defsystem "pira/privatenetworks"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "privatenetworks")))

(defsystem "pira/proton"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "proton")))

(defsystem "pira/qapps"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "qapps")))

(defsystem "pira/qbusiness"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "qbusiness")))

(defsystem "pira/qconnect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "qconnect")))

(defsystem "pira/qldb-session"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "qldb-session")))

(defsystem "pira/qldb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "qldb")))

(defsystem "pira/quicksight"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "quicksight")))

(defsystem "pira/ram"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ram")))

(defsystem "pira/rbin"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "rbin")))

(defsystem "pira/rds-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "rds-data")))

(defsystem "pira/rds"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "rds")))

(defsystem "pira/redshift-data"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "redshift-data")))

(defsystem "pira/redshift-serverless"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "redshift-serverless")))

(defsystem "pira/redshift"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "redshift")))

(defsystem "pira/rekognition"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "rekognition")))

(defsystem "pira/repostspace"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "repostspace")))

(defsystem "pira/resiliencehub"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "resiliencehub")))

(defsystem "pira/resource-explorer-2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "resource-explorer-2")))

(defsystem "pira/resource-groups-tagging-api"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "resource-groups-tagging-api")))

(defsystem "pira/resource-groups"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "resource-groups")))

(defsystem "pira/robomaker"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "robomaker")))

(defsystem "pira/rolesanywhere"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "rolesanywhere")))

(defsystem "pira/route-53-domains"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route-53-domains")))

(defsystem "pira/route-53"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route-53")))

(defsystem "pira/route53-recovery-cluster"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route53-recovery-cluster")))

(defsystem "pira/route53-recovery-control-config"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route53-recovery-control-config")))

(defsystem "pira/route53-recovery-readiness"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route53-recovery-readiness")))

(defsystem "pira/route53profiles"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route53profiles")))

(defsystem "pira/route53resolver"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "route53resolver")))

(defsystem "pira/rum"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "rum")))

(defsystem "pira/s3-control"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "s3-control")))

(defsystem "pira/s3"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "s3")))

(defsystem "pira/s3outposts"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "s3outposts")))

(defsystem "pira/s3tables"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "s3tables")))

(defsystem "pira/s3vectors"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "s3vectors")))

(defsystem "pira/sagemaker-a2i-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker-a2i-runtime")))

(defsystem "pira/sagemaker-edge"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker-edge")))

(defsystem "pira/sagemaker-featurestore-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker-featurestore-runtime")))

(defsystem "pira/sagemaker-geospatial"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker-geospatial")))

(defsystem "pira/sagemaker-metrics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker-metrics")))

(defsystem "pira/sagemaker-runtime"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker-runtime")))

(defsystem "pira/sagemaker"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sagemaker")))

(defsystem "pira/savingsplans"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "savingsplans")))

(defsystem "pira/scheduler"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "scheduler")))

(defsystem "pira/schemas"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "schemas")))

(defsystem "pira/secrets-manager"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "secrets-manager")))

(defsystem "pira/security-ir"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "security-ir")))

(defsystem "pira/securityhub"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "securityhub")))

(defsystem "pira/securitylake"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "securitylake")))

(defsystem "pira/serverlessapplicationrepository"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "serverlessapplicationrepository")))

(defsystem "pira/service-catalog-appregistry"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "service-catalog-appregistry")))

(defsystem "pira/service-catalog"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "service-catalog")))

(defsystem "pira/service-quotas"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "service-quotas")))

(defsystem "pira/servicediscovery"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "servicediscovery")))

(defsystem "pira/ses"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ses")))

(defsystem "pira/sesv2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sesv2")))

(defsystem "pira/sfn"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sfn")))

(defsystem "pira/shield"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "shield")))

(defsystem "pira/signer"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "signer")))

(defsystem "pira/simspaceweaver"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "simspaceweaver")))

(defsystem "pira/sms"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sms")))

(defsystem "pira/snow-device-management"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "snow-device-management")))

(defsystem "pira/snowball"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "snowball")))

(defsystem "pira/sns"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sns")))

(defsystem "pira/socialmessaging"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "socialmessaging")))

(defsystem "pira/sqs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sqs")))

(defsystem "pira/ssm-contacts"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ssm-contacts")))

(defsystem "pira/ssm-guiconnect"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ssm-guiconnect")))

(defsystem "pira/ssm-incidents"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ssm-incidents")))

(defsystem "pira/ssm-quicksetup"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ssm-quicksetup")))

(defsystem "pira/ssm-sap"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ssm-sap")))

(defsystem "pira/ssm"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "ssm")))

(defsystem "pira/sso-admin"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sso-admin")))

(defsystem "pira/sso-oidc"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sso-oidc")))

(defsystem "pira/sso"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sso")))

(defsystem "pira/storage-gateway"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "storage-gateway")))

(defsystem "pira/sts"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "sts")))

(defsystem "pira/supplychain"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "supplychain")))

(defsystem "pira/support-app"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "support-app")))

(defsystem "pira/support"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "support")))

(defsystem "pira/swf"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "swf")))

(defsystem "pira/synthetics"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "synthetics")))

(defsystem "pira/taxsettings"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "taxsettings")))

(defsystem "pira/textract"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "textract")))

(defsystem "pira/timestream-influxdb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "timestream-influxdb")))

(defsystem "pira/timestream-query"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "timestream-query")))

(defsystem "pira/timestream-write"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "timestream-write")))

(defsystem "pira/tnb"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "tnb")))

(defsystem "pira/transcribe-streaming"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "transcribe-streaming")))

(defsystem "pira/transcribe"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "transcribe")))

(defsystem "pira/transfer"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "transfer")))

(defsystem "pira/translate"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "translate")))

(defsystem "pira/trustedadvisor"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "trustedadvisor")))

(defsystem "pira/verifiedpermissions"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "verifiedpermissions")))

(defsystem "pira/voice-id"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "voice-id")))

(defsystem "pira/vpc-lattice"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "vpc-lattice")))

(defsystem "pira/waf-regional"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "waf-regional")))

(defsystem "pira/waf"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "waf")))

(defsystem "pira/wafv2"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "wafv2")))

(defsystem "pira/wellarchitected"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "wellarchitected")))

(defsystem "pira/wisdom"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "wisdom")))

(defsystem "pira/workdocs"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workdocs")))

(defsystem "pira/workmail"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workmail")))

(defsystem "pira/workmailmessageflow"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workmailmessageflow")))

(defsystem "pira/workspaces-instances"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workspaces-instances")))

(defsystem "pira/workspaces-thin-client"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workspaces-thin-client")))

(defsystem "pira/workspaces-web"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workspaces-web")))

(defsystem "pira/workspaces"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "workspaces")))

(defsystem "pira/xray"
  :depends-on ("smithy/sdk" "pira-core/error")
  :pathname "services"
  :components
  ((:file "xray")))
