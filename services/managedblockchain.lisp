(uiop/package:define-package #:pira/managedblockchain (:use)
                             (:export #:accessor
                              #:accessor-billing-token-string
                              #:accessor-list-max-results
                              #:accessor-network-type #:accessor-status
                              #:accessor-summary #:accessor-summary-list
                              #:accessor-type #:approval-threshold-policy
                              #:arn-string #:availability-zone-string
                              #:client-request-token-string #:create-accessor
                              #:create-member #:create-network #:create-node
                              #:create-proposal #:delete-accessor
                              #:delete-member #:delete-node
                              #:description-string #:edition #:enabled
                              #:exception-message #:framework
                              #:framework-version-string #:get-accessor
                              #:get-member #:get-network #:get-node
                              #:get-proposal #:input-tag-map
                              #:instance-type-string #:invitation
                              #:invitation-list #:invitation-status
                              #:invite-action #:invite-action-list #:is-owned
                              #:list-accessors #:list-invitations
                              #:list-members #:list-networks #:list-nodes
                              #:list-proposal-votes #:list-proposals
                              #:list-tags-for-resource #:log-configuration
                              #:log-configurations #:member
                              #:member-configuration #:member-fabric-attributes
                              #:member-fabric-configuration
                              #:member-fabric-log-publishing-configuration
                              #:member-framework-attributes
                              #:member-framework-configuration
                              #:member-list-max-results
                              #:member-log-publishing-configuration
                              #:member-status #:member-summary
                              #:member-summary-list #:name-string #:network
                              #:network-ethereum-attributes
                              #:network-fabric-attributes
                              #:network-fabric-configuration
                              #:network-framework-attributes
                              #:network-framework-configuration
                              #:network-list-max-results
                              #:network-member-name-string #:network-status
                              #:network-summary #:network-summary-list #:node
                              #:node-configuration #:node-ethereum-attributes
                              #:node-fabric-attributes
                              #:node-fabric-log-publishing-configuration
                              #:node-framework-attributes
                              #:node-list-max-results
                              #:node-log-publishing-configuration #:node-status
                              #:node-summary #:node-summary-list
                              #:output-tag-map #:pagination-token
                              #:password-string #:principal-string #:proposal
                              #:proposal-actions #:proposal-duration-int
                              #:proposal-list-max-results #:proposal-status
                              #:proposal-summary #:proposal-summary-list
                              #:proposal-vote-list #:reject-invitation
                              #:remove-action #:remove-action-list
                              #:resource-id-string #:state-dbtype #:string
                              #:tag-key #:tag-key-list #:tag-resource
                              #:tag-value #:taiga-web-service
                              #:threshold-comparator #:threshold-percentage-int
                              #:timestamp #:untag-resource #:update-member
                              #:update-node #:username-string #:vote-count
                              #:vote-on-proposal #:vote-summary #:vote-value
                              #:voting-policy))
(common-lisp:in-package #:pira/managedblockchain)

(smithy/sdk/service:define-service taiga-web-service :shape-name
                                   "TaigaWebService" :version "2018-09-24"
                                   :title "Amazon Managed Blockchain" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ManagedBlockchain")
                                      ("arnNamespace" . "managedblockchain")
                                      ("cloudFormationName"
                                       . "ManagedBlockchain")
                                      ("cloudTrailEventSource"
                                       . "managedblockchain.amazonaws.com")
                                      ("endpointPrefix" . "managedblockchain"))
                                     ("aws.auth#sigv4"
                                      ("name" . "managedblockchain"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure accessor common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "Id")
                                     (type :target-type accessor-type
                                      :member-name "Type")
                                     (billing-token :target-type
                                      accessor-billing-token-string
                                      :member-name "BillingToken")
                                     (status :target-type accessor-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (arn :target-type arn-string :member-name
                                      "Arn")
                                     (tags :target-type output-tag-map
                                      :member-name "Tags")
                                     (network-type :target-type
                                      accessor-network-type :member-name
                                      "NetworkType"))
                                    (:shape-name "Accessor"))

(smithy/sdk/shapes:define-type accessor-billing-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type accessor-list-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum accessor-network-type
    common-lisp:nil
  (:ethereum-goerli "ETHEREUM_GOERLI")
  (:ethereum-mainnet "ETHEREUM_MAINNET")
  (:ethereum-mainnet-and-goerli "ETHEREUM_MAINNET_AND_GOERLI")
  (:polygon-mainnet "POLYGON_MAINNET")
  (:polygon-mumbai "POLYGON_MUMBAI"))

(smithy/sdk/shapes:define-enum accessor-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending-deletion "PENDING_DELETION")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure accessor-summary common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "Id")
                                     (type :target-type accessor-type
                                      :member-name "Type")
                                     (status :target-type accessor-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (arn :target-type arn-string :member-name
                                      "Arn")
                                     (network-type :target-type
                                      accessor-network-type :member-name
                                      "NetworkType"))
                                    (:shape-name "AccessorSummary"))

(smithy/sdk/shapes:define-list accessor-summary-list :member accessor-summary)

(smithy/sdk/shapes:define-enum accessor-type
    common-lisp:nil
  (:billing-token "BILLING_TOKEN"))

(smithy/sdk/shapes:define-structure approval-threshold-policy common-lisp:nil
                                    ((threshold-percentage :target-type
                                      threshold-percentage-int :member-name
                                      "ThresholdPercentage")
                                     (proposal-duration-in-hours :target-type
                                      proposal-duration-int :member-name
                                      "ProposalDurationInHours")
                                     (threshold-comparator :target-type
                                      threshold-comparator :member-name
                                      "ThresholdComparator"))
                                    (:shape-name "ApprovalThresholdPolicy"))

(smithy/sdk/shapes:define-type arn-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-accessor-input common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token-string :required
                                  common-lisp:t :member-name
                                  "ClientRequestToken")
                                 (accessor-type :target-type accessor-type
                                  :required common-lisp:t :member-name
                                  "AccessorType")
                                 (tags :target-type input-tag-map :member-name
                                  "Tags")
                                 (network-type :target-type
                                  accessor-network-type :member-name
                                  "NetworkType"))
                                (:shape-name "CreateAccessorInput"))

(smithy/sdk/shapes:define-output create-accessor-output common-lisp:nil
                                 ((accessor-id :target-type resource-id-string
                                   :member-name "AccessorId")
                                  (billing-token :target-type
                                   accessor-billing-token-string :member-name
                                   "BillingToken")
                                  (network-type :target-type
                                   accessor-network-type :member-name
                                   "NetworkType"))
                                 (:shape-name "CreateAccessorOutput"))

(smithy/sdk/shapes:define-input create-member-input common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token-string :required
                                  common-lisp:t :member-name
                                  "ClientRequestToken")
                                 (invitation-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "InvitationId")
                                 (network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-configuration :target-type
                                  member-configuration :required common-lisp:t
                                  :member-name "MemberConfiguration"))
                                (:shape-name "CreateMemberInput"))

(smithy/sdk/shapes:define-output create-member-output common-lisp:nil
                                 ((member-id :target-type resource-id-string
                                   :member-name "MemberId"))
                                 (:shape-name "CreateMemberOutput"))

(smithy/sdk/shapes:define-input create-network-input common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token-string :required
                                  common-lisp:t :member-name
                                  "ClientRequestToken")
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (framework :target-type framework :required
                                  common-lisp:t :member-name "Framework")
                                 (framework-version :target-type
                                  framework-version-string :required
                                  common-lisp:t :member-name
                                  "FrameworkVersion")
                                 (framework-configuration :target-type
                                  network-framework-configuration :member-name
                                  "FrameworkConfiguration")
                                 (voting-policy :target-type voting-policy
                                  :required common-lisp:t :member-name
                                  "VotingPolicy")
                                 (member-configuration :target-type
                                  member-configuration :required common-lisp:t
                                  :member-name "MemberConfiguration")
                                 (tags :target-type input-tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateNetworkInput"))

(smithy/sdk/shapes:define-output create-network-output common-lisp:nil
                                 ((network-id :target-type resource-id-string
                                   :member-name "NetworkId")
                                  (member-id :target-type resource-id-string
                                   :member-name "MemberId"))
                                 (:shape-name "CreateNetworkOutput"))

(smithy/sdk/shapes:define-input create-node-input common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token-string :required
                                  common-lisp:t :member-name
                                  "ClientRequestToken")
                                 (network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :member-name "MemberId")
                                 (node-configuration :target-type
                                  node-configuration :required common-lisp:t
                                  :member-name "NodeConfiguration")
                                 (tags :target-type input-tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateNodeInput"))

(smithy/sdk/shapes:define-output create-node-output common-lisp:nil
                                 ((node-id :target-type resource-id-string
                                   :member-name "NodeId"))
                                 (:shape-name "CreateNodeOutput"))

(smithy/sdk/shapes:define-input create-proposal-input common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token-string :required
                                  common-lisp:t :member-name
                                  "ClientRequestToken")
                                 (network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "MemberId")
                                 (actions :target-type proposal-actions
                                  :required common-lisp:t :member-name
                                  "Actions")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (tags :target-type input-tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateProposalInput"))

(smithy/sdk/shapes:define-output create-proposal-output common-lisp:nil
                                 ((proposal-id :target-type resource-id-string
                                   :member-name "ProposalId"))
                                 (:shape-name "CreateProposalOutput"))

(smithy/sdk/shapes:define-input delete-accessor-input common-lisp:nil
                                ((accessor-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "AccessorId" :http-label common-lisp:t))
                                (:shape-name "DeleteAccessorInput"))

(smithy/sdk/shapes:define-output delete-accessor-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAccessorOutput"))

(smithy/sdk/shapes:define-input delete-member-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "MemberId" :http-label common-lisp:t))
                                (:shape-name "DeleteMemberInput"))

(smithy/sdk/shapes:define-output delete-member-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMemberOutput"))

(smithy/sdk/shapes:define-input delete-node-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :member-name "MemberId" :http-query
                                  "memberId")
                                 (node-id :target-type resource-id-string
                                  :required common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteNodeInput"))

(smithy/sdk/shapes:define-output delete-node-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteNodeOutput"))

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum edition
    common-lisp:nil
  (:starter "STARTER")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum framework
    common-lisp:nil
  (:hyperledger-fabric "HYPERLEDGER_FABRIC")
  (:ethereum "ETHEREUM"))

(smithy/sdk/shapes:define-type framework-version-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-accessor-input common-lisp:nil
                                ((accessor-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "AccessorId" :http-label common-lisp:t))
                                (:shape-name "GetAccessorInput"))

(smithy/sdk/shapes:define-output get-accessor-output common-lisp:nil
                                 ((accessor :target-type accessor :member-name
                                   "Accessor"))
                                 (:shape-name "GetAccessorOutput"))

(smithy/sdk/shapes:define-input get-member-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "MemberId" :http-label common-lisp:t))
                                (:shape-name "GetMemberInput"))

(smithy/sdk/shapes:define-output get-member-output common-lisp:nil
                                 ((member :target-type member :member-name
                                   "Member"))
                                 (:shape-name "GetMemberOutput"))

(smithy/sdk/shapes:define-input get-network-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t))
                                (:shape-name "GetNetworkInput"))

(smithy/sdk/shapes:define-output get-network-output common-lisp:nil
                                 ((network :target-type network :member-name
                                   "Network"))
                                 (:shape-name "GetNetworkOutput"))

(smithy/sdk/shapes:define-input get-node-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :member-name "MemberId" :http-query
                                  "memberId")
                                 (node-id :target-type resource-id-string
                                  :required common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetNodeInput"))

(smithy/sdk/shapes:define-output get-node-output common-lisp:nil
                                 ((node :target-type node :member-name "Node"))
                                 (:shape-name "GetNodeOutput"))

(smithy/sdk/shapes:define-input get-proposal-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (proposal-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "ProposalId" :http-label common-lisp:t))
                                (:shape-name "GetProposalInput"))

(smithy/sdk/shapes:define-output get-proposal-output common-lisp:nil
                                 ((proposal :target-type proposal :member-name
                                   "Proposal"))
                                 (:shape-name "GetProposalOutput"))

(smithy/sdk/shapes:define-error illegal-action-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "IllegalActionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map input-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type instance-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure invitation common-lisp:nil
                                    ((invitation-id :target-type
                                      resource-id-string :member-name
                                      "InvitationId")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (expiration-date :target-type timestamp
                                      :member-name "ExpirationDate")
                                     (status :target-type invitation-status
                                      :member-name "Status")
                                     (network-summary :target-type
                                      network-summary :member-name
                                      "NetworkSummary")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "Invitation"))

(smithy/sdk/shapes:define-list invitation-list :member invitation)

(smithy/sdk/shapes:define-enum invitation-status
    common-lisp:nil
  (:pending "PENDING")
  (:accepted "ACCEPTED")
  (:accepting "ACCEPTING")
  (:rejected "REJECTED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-structure invite-action common-lisp:nil
                                    ((principal :target-type principal-string
                                      :required common-lisp:t :member-name
                                      "Principal"))
                                    (:shape-name "InviteAction"))

(smithy/sdk/shapes:define-list invite-action-list :member invite-action)

(smithy/sdk/shapes:define-type is-owned smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input list-accessors-input common-lisp:nil
                                ((max-results :target-type
                                  accessor-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (network-type :target-type
                                  accessor-network-type :member-name
                                  "NetworkType" :http-query "networkType"))
                                (:shape-name "ListAccessorsInput"))

(smithy/sdk/shapes:define-output list-accessors-output common-lisp:nil
                                 ((accessors :target-type accessor-summary-list
                                   :member-name "Accessors")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAccessorsOutput"))

(smithy/sdk/shapes:define-input list-invitations-input common-lisp:nil
                                ((max-results :target-type
                                  proposal-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListInvitationsInput"))

(smithy/sdk/shapes:define-output list-invitations-output common-lisp:nil
                                 ((invitations :target-type invitation-list
                                   :member-name "Invitations")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInvitationsOutput"))

(smithy/sdk/shapes:define-input list-members-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :http-query "name")
                                 (status :target-type member-status
                                  :member-name "Status" :http-query "status")
                                 (is-owned :target-type is-owned :member-name
                                  "IsOwned" :http-query "isOwned")
                                 (max-results :target-type
                                  member-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListMembersInput"))

(smithy/sdk/shapes:define-output list-members-output common-lisp:nil
                                 ((members :target-type member-summary-list
                                   :member-name "Members")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMembersOutput"))

(smithy/sdk/shapes:define-input list-networks-input common-lisp:nil
                                ((name :target-type string :member-name "Name"
                                  :http-query "name")
                                 (framework :target-type framework :member-name
                                  "Framework" :http-query "framework")
                                 (status :target-type network-status
                                  :member-name "Status" :http-query "status")
                                 (max-results :target-type
                                  network-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListNetworksInput"))

(smithy/sdk/shapes:define-output list-networks-output common-lisp:nil
                                 ((networks :target-type network-summary-list
                                   :member-name "Networks")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListNetworksOutput"))

(smithy/sdk/shapes:define-input list-nodes-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :member-name "MemberId" :http-query
                                  "memberId")
                                 (status :target-type node-status :member-name
                                  "Status" :http-query "status")
                                 (max-results :target-type
                                  node-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListNodesInput"))

(smithy/sdk/shapes:define-output list-nodes-output common-lisp:nil
                                 ((nodes :target-type node-summary-list
                                   :member-name "Nodes")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListNodesOutput"))

(smithy/sdk/shapes:define-input list-proposal-votes-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (proposal-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "ProposalId" :http-label common-lisp:t)
                                 (max-results :target-type
                                  proposal-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListProposalVotesInput"))

(smithy/sdk/shapes:define-output list-proposal-votes-output common-lisp:nil
                                 ((proposal-votes :target-type
                                   proposal-vote-list :member-name
                                   "ProposalVotes")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProposalVotesOutput"))

(smithy/sdk/shapes:define-input list-proposals-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (max-results :target-type
                                  proposal-list-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListProposalsInput"))

(smithy/sdk/shapes:define-output list-proposals-output common-lisp:nil
                                 ((proposals :target-type proposal-summary-list
                                   :member-name "Proposals")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProposalsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type output-tag-map
                                   :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure log-configuration common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "Enabled"))
                                    (:shape-name "LogConfiguration"))

(smithy/sdk/shapes:define-structure log-configurations common-lisp:nil
                                    ((cloudwatch :target-type log-configuration
                                      :member-name "Cloudwatch"))
                                    (:shape-name "LogConfigurations"))

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((network-id :target-type
                                      resource-id-string :member-name
                                      "NetworkId")
                                     (id :target-type resource-id-string
                                      :member-name "Id")
                                     (name :target-type
                                      network-member-name-string :member-name
                                      "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (framework-attributes :target-type
                                      member-framework-attributes :member-name
                                      "FrameworkAttributes")
                                     (log-publishing-configuration :target-type
                                      member-log-publishing-configuration
                                      :member-name
                                      "LogPublishingConfiguration")
                                     (status :target-type member-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (tags :target-type output-tag-map
                                      :member-name "Tags")
                                     (arn :target-type arn-string :member-name
                                      "Arn")
                                     (kms-key-arn :target-type string
                                      :member-name "KmsKeyArn"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-structure member-configuration common-lisp:nil
                                    ((name :target-type
                                      network-member-name-string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (framework-configuration :target-type
                                      member-framework-configuration :required
                                      common-lisp:t :member-name
                                      "FrameworkConfiguration")
                                     (log-publishing-configuration :target-type
                                      member-log-publishing-configuration
                                      :member-name
                                      "LogPublishingConfiguration")
                                     (tags :target-type input-tag-map
                                      :member-name "Tags")
                                     (kms-key-arn :target-type arn-string
                                      :member-name "KmsKeyArn"))
                                    (:shape-name "MemberConfiguration"))

(smithy/sdk/shapes:define-structure member-fabric-attributes common-lisp:nil
                                    ((admin-username :target-type
                                      username-string :member-name
                                      "AdminUsername")
                                     (ca-endpoint :target-type string
                                      :member-name "CaEndpoint"))
                                    (:shape-name "MemberFabricAttributes"))

(smithy/sdk/shapes:define-structure member-fabric-configuration common-lisp:nil
                                    ((admin-username :target-type
                                      username-string :required common-lisp:t
                                      :member-name "AdminUsername")
                                     (admin-password :target-type
                                      password-string :required common-lisp:t
                                      :member-name "AdminPassword"))
                                    (:shape-name "MemberFabricConfiguration"))

(smithy/sdk/shapes:define-structure member-fabric-log-publishing-configuration
                                    common-lisp:nil
                                    ((ca-logs :target-type log-configurations
                                      :member-name "CaLogs"))
                                    (:shape-name
                                     "MemberFabricLogPublishingConfiguration"))

(smithy/sdk/shapes:define-structure member-framework-attributes common-lisp:nil
                                    ((fabric :target-type
                                      member-fabric-attributes :member-name
                                      "Fabric"))
                                    (:shape-name "MemberFrameworkAttributes"))

(smithy/sdk/shapes:define-structure member-framework-configuration
                                    common-lisp:nil
                                    ((fabric :target-type
                                      member-fabric-configuration :member-name
                                      "Fabric"))
                                    (:shape-name
                                     "MemberFrameworkConfiguration"))

(smithy/sdk/shapes:define-type member-list-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member-log-publishing-configuration
                                    common-lisp:nil
                                    ((fabric :target-type
                                      member-fabric-log-publishing-configuration
                                      :member-name "Fabric"))
                                    (:shape-name
                                     "MemberLogPublishingConfiguration"))

(smithy/sdk/shapes:define-enum member-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:create-failed "CREATE_FAILED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:inaccessible-encryption-key "INACCESSIBLE_ENCRYPTION_KEY"))

(smithy/sdk/shapes:define-structure member-summary common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "Id")
                                     (name :target-type
                                      network-member-name-string :member-name
                                      "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (status :target-type member-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (is-owned :target-type is-owned
                                      :member-name "IsOwned")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "MemberSummary"))

(smithy/sdk/shapes:define-list member-summary-list :member member-summary)

(smithy/sdk/shapes:define-type name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "Id")
                                     (name :target-type name-string
                                      :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (framework :target-type framework
                                      :member-name "Framework")
                                     (framework-version :target-type
                                      framework-version-string :member-name
                                      "FrameworkVersion")
                                     (framework-attributes :target-type
                                      network-framework-attributes :member-name
                                      "FrameworkAttributes")
                                     (vpc-endpoint-service-name :target-type
                                      string :member-name
                                      "VpcEndpointServiceName")
                                     (voting-policy :target-type voting-policy
                                      :member-name "VotingPolicy")
                                     (status :target-type network-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (tags :target-type output-tag-map
                                      :member-name "Tags")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "Network"))

(smithy/sdk/shapes:define-structure network-ethereum-attributes common-lisp:nil
                                    ((chain-id :target-type string :member-name
                                      "ChainId"))
                                    (:shape-name "NetworkEthereumAttributes"))

(smithy/sdk/shapes:define-structure network-fabric-attributes common-lisp:nil
                                    ((ordering-service-endpoint :target-type
                                      string :member-name
                                      "OrderingServiceEndpoint")
                                     (edition :target-type edition :member-name
                                      "Edition"))
                                    (:shape-name "NetworkFabricAttributes"))

(smithy/sdk/shapes:define-structure network-fabric-configuration
                                    common-lisp:nil
                                    ((edition :target-type edition :required
                                      common-lisp:t :member-name "Edition"))
                                    (:shape-name "NetworkFabricConfiguration"))

(smithy/sdk/shapes:define-structure network-framework-attributes
                                    common-lisp:nil
                                    ((fabric :target-type
                                      network-fabric-attributes :member-name
                                      "Fabric")
                                     (ethereum :target-type
                                      network-ethereum-attributes :member-name
                                      "Ethereum"))
                                    (:shape-name "NetworkFrameworkAttributes"))

(smithy/sdk/shapes:define-structure network-framework-configuration
                                    common-lisp:nil
                                    ((fabric :target-type
                                      network-fabric-configuration :member-name
                                      "Fabric"))
                                    (:shape-name
                                     "NetworkFrameworkConfiguration"))

(smithy/sdk/shapes:define-type network-list-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type network-member-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum network-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:create-failed "CREATE_FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure network-summary common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "Id")
                                     (name :target-type name-string
                                      :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (framework :target-type framework
                                      :member-name "Framework")
                                     (framework-version :target-type
                                      framework-version-string :member-name
                                      "FrameworkVersion")
                                     (status :target-type network-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "NetworkSummary"))

(smithy/sdk/shapes:define-list network-summary-list :member network-summary)

(smithy/sdk/shapes:define-structure node common-lisp:nil
                                    ((network-id :target-type
                                      resource-id-string :member-name
                                      "NetworkId")
                                     (member-id :target-type resource-id-string
                                      :member-name "MemberId")
                                     (id :target-type resource-id-string
                                      :member-name "Id")
                                     (instance-type :target-type
                                      instance-type-string :member-name
                                      "InstanceType")
                                     (availability-zone :target-type
                                      availability-zone-string :member-name
                                      "AvailabilityZone")
                                     (framework-attributes :target-type
                                      node-framework-attributes :member-name
                                      "FrameworkAttributes")
                                     (log-publishing-configuration :target-type
                                      node-log-publishing-configuration
                                      :member-name
                                      "LogPublishingConfiguration")
                                     (state-db :target-type state-dbtype
                                      :member-name "StateDB")
                                     (status :target-type node-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (tags :target-type output-tag-map
                                      :member-name "Tags")
                                     (arn :target-type arn-string :member-name
                                      "Arn")
                                     (kms-key-arn :target-type string
                                      :member-name "KmsKeyArn"))
                                    (:shape-name "Node"))

(smithy/sdk/shapes:define-structure node-configuration common-lisp:nil
                                    ((instance-type :target-type
                                      instance-type-string :required
                                      common-lisp:t :member-name
                                      "InstanceType")
                                     (availability-zone :target-type
                                      availability-zone-string :member-name
                                      "AvailabilityZone")
                                     (log-publishing-configuration :target-type
                                      node-log-publishing-configuration
                                      :member-name
                                      "LogPublishingConfiguration")
                                     (state-db :target-type state-dbtype
                                      :member-name "StateDB"))
                                    (:shape-name "NodeConfiguration"))

(smithy/sdk/shapes:define-structure node-ethereum-attributes common-lisp:nil
                                    ((http-endpoint :target-type string
                                      :member-name "HttpEndpoint")
                                     (web-socket-endpoint :target-type string
                                      :member-name "WebSocketEndpoint"))
                                    (:shape-name "NodeEthereumAttributes"))

(smithy/sdk/shapes:define-structure node-fabric-attributes common-lisp:nil
                                    ((peer-endpoint :target-type string
                                      :member-name "PeerEndpoint")
                                     (peer-event-endpoint :target-type string
                                      :member-name "PeerEventEndpoint"))
                                    (:shape-name "NodeFabricAttributes"))

(smithy/sdk/shapes:define-structure node-fabric-log-publishing-configuration
                                    common-lisp:nil
                                    ((chaincode-logs :target-type
                                      log-configurations :member-name
                                      "ChaincodeLogs")
                                     (peer-logs :target-type log-configurations
                                      :member-name "PeerLogs"))
                                    (:shape-name
                                     "NodeFabricLogPublishingConfiguration"))

(smithy/sdk/shapes:define-structure node-framework-attributes common-lisp:nil
                                    ((fabric :target-type
                                      node-fabric-attributes :member-name
                                      "Fabric")
                                     (ethereum :target-type
                                      node-ethereum-attributes :member-name
                                      "Ethereum"))
                                    (:shape-name "NodeFrameworkAttributes"))

(smithy/sdk/shapes:define-type node-list-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure node-log-publishing-configuration
                                    common-lisp:nil
                                    ((fabric :target-type
                                      node-fabric-log-publishing-configuration
                                      :member-name "Fabric"))
                                    (:shape-name
                                     "NodeLogPublishingConfiguration"))

(smithy/sdk/shapes:define-enum node-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:unhealthy "UNHEALTHY")
  (:create-failed "CREATE_FAILED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:failed "FAILED")
  (:inaccessible-encryption-key "INACCESSIBLE_ENCRYPTION_KEY"))

(smithy/sdk/shapes:define-structure node-summary common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "Id")
                                     (status :target-type node-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (availability-zone :target-type
                                      availability-zone-string :member-name
                                      "AvailabilityZone")
                                     (instance-type :target-type
                                      instance-type-string :member-name
                                      "InstanceType")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "NodeSummary"))

(smithy/sdk/shapes:define-list node-summary-list :member node-summary)

(smithy/sdk/shapes:define-map output-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure proposal common-lisp:nil
                                    ((proposal-id :target-type
                                      resource-id-string :member-name
                                      "ProposalId")
                                     (network-id :target-type
                                      resource-id-string :member-name
                                      "NetworkId")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (actions :target-type proposal-actions
                                      :member-name "Actions")
                                     (proposed-by-member-id :target-type
                                      resource-id-string :member-name
                                      "ProposedByMemberId")
                                     (proposed-by-member-name :target-type
                                      network-member-name-string :member-name
                                      "ProposedByMemberName")
                                     (status :target-type proposal-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (expiration-date :target-type timestamp
                                      :member-name "ExpirationDate")
                                     (yes-vote-count :target-type vote-count
                                      :member-name "YesVoteCount")
                                     (no-vote-count :target-type vote-count
                                      :member-name "NoVoteCount")
                                     (outstanding-vote-count :target-type
                                      vote-count :member-name
                                      "OutstandingVoteCount")
                                     (tags :target-type output-tag-map
                                      :member-name "Tags")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "Proposal"))

(smithy/sdk/shapes:define-structure proposal-actions common-lisp:nil
                                    ((invitations :target-type
                                      invite-action-list :member-name
                                      "Invitations")
                                     (removals :target-type remove-action-list
                                      :member-name "Removals"))
                                    (:shape-name "ProposalActions"))

(smithy/sdk/shapes:define-type proposal-duration-int
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type proposal-list-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum proposal-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:approved "APPROVED")
  (:rejected "REJECTED")
  (:expired "EXPIRED")
  (:action-failed "ACTION_FAILED"))

(smithy/sdk/shapes:define-structure proposal-summary common-lisp:nil
                                    ((proposal-id :target-type
                                      resource-id-string :member-name
                                      "ProposalId")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (proposed-by-member-id :target-type
                                      resource-id-string :member-name
                                      "ProposedByMemberId")
                                     (proposed-by-member-name :target-type
                                      network-member-name-string :member-name
                                      "ProposedByMemberName")
                                     (status :target-type proposal-status
                                      :member-name "Status")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (expiration-date :target-type timestamp
                                      :member-name "ExpirationDate")
                                     (arn :target-type arn-string :member-name
                                      "Arn"))
                                    (:shape-name "ProposalSummary"))

(smithy/sdk/shapes:define-list proposal-summary-list :member proposal-summary)

(smithy/sdk/shapes:define-list proposal-vote-list :member vote-summary)

(smithy/sdk/shapes:define-input reject-invitation-input common-lisp:nil
                                ((invitation-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "InvitationId" :http-label common-lisp:t))
                                (:shape-name "RejectInvitationInput"))

(smithy/sdk/shapes:define-output reject-invitation-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RejectInvitationOutput"))

(smithy/sdk/shapes:define-structure remove-action common-lisp:nil
                                    ((member-id :target-type resource-id-string
                                      :required common-lisp:t :member-name
                                      "MemberId"))
                                    (:shape-name "RemoveAction"))

(smithy/sdk/shapes:define-list remove-action-list :member remove-action)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-name :target-type arn-string
                                  :member-name "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-not-ready-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotReadyException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum state-dbtype
    common-lisp:nil
  (:level-db "LevelDB")
  (:couch-db "CouchDB"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type input-tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum threshold-comparator
    common-lisp:nil
  (:greater-than "GREATER_THAN")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO"))

(smithy/sdk/shapes:define-type threshold-percentage-int
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (resource-name :target-type arn-string
                                  :member-name "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-member-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "MemberId" :http-label common-lisp:t)
                                 (log-publishing-configuration :target-type
                                  member-log-publishing-configuration
                                  :member-name "LogPublishingConfiguration"))
                                (:shape-name "UpdateMemberInput"))

(smithy/sdk/shapes:define-output update-member-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMemberOutput"))

(smithy/sdk/shapes:define-input update-node-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (member-id :target-type resource-id-string
                                  :member-name "MemberId")
                                 (node-id :target-type resource-id-string
                                  :required common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t)
                                 (log-publishing-configuration :target-type
                                  node-log-publishing-configuration
                                  :member-name "LogPublishingConfiguration"))
                                (:shape-name "UpdateNodeInput"))

(smithy/sdk/shapes:define-output update-node-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateNodeOutput"))

(smithy/sdk/shapes:define-type username-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vote-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input vote-on-proposal-input common-lisp:nil
                                ((network-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "NetworkId" :http-label common-lisp:t)
                                 (proposal-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "ProposalId" :http-label common-lisp:t)
                                 (voter-member-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "VoterMemberId")
                                 (vote :target-type vote-value :required
                                  common-lisp:t :member-name "Vote"))
                                (:shape-name "VoteOnProposalInput"))

(smithy/sdk/shapes:define-output vote-on-proposal-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "VoteOnProposalOutput"))

(smithy/sdk/shapes:define-structure vote-summary common-lisp:nil
                                    ((vote :target-type vote-value :member-name
                                      "Vote")
                                     (member-name :target-type
                                      network-member-name-string :member-name
                                      "MemberName")
                                     (member-id :target-type resource-id-string
                                      :member-name "MemberId"))
                                    (:shape-name "VoteSummary"))

(smithy/sdk/shapes:define-enum vote-value
    common-lisp:nil
  (:yes "YES")
  (:no "NO"))

(smithy/sdk/shapes:define-structure voting-policy common-lisp:nil
                                    ((approval-threshold-policy :target-type
                                      approval-threshold-policy :member-name
                                      "ApprovalThresholdPolicy"))
                                    (:shape-name "VotingPolicy"))

(smithy/sdk/operation:define-operation create-accessor :shape-name
                                       "CreateAccessor" :input
                                       create-accessor-input :output
                                       create-accessor-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri "/accessors" :code
                                       200)

(smithy/sdk/operation:define-operation create-member :shape-name "CreateMember"
                                       :input create-member-input :output
                                       create-member-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri
                                       "/networks/{NetworkId}/members" :code
                                       200)

(smithy/sdk/operation:define-operation create-network :shape-name
                                       "CreateNetwork" :input
                                       create-network-input :output
                                       create-network-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri "/networks" :code
                                       200)

(smithy/sdk/operation:define-operation create-node :shape-name "CreateNode"
                                       :input create-node-input :output
                                       create-node-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri
                                       "/networks/{NetworkId}/nodes" :code 200)

(smithy/sdk/operation:define-operation create-proposal :shape-name
                                       "CreateProposal" :input
                                       create-proposal-input :output
                                       create-proposal-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri
                                       "/networks/{NetworkId}/proposals" :code
                                       200)

(smithy/sdk/operation:define-operation delete-accessor :shape-name
                                       "DeleteAccessor" :input
                                       delete-accessor-input :output
                                       delete-accessor-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/accessors/{AccessorId}" :code 200)

(smithy/sdk/operation:define-operation delete-member :shape-name "DeleteMember"
                                       :input delete-member-input :output
                                       delete-member-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/networks/{NetworkId}/members/{MemberId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-node :shape-name "DeleteNode"
                                       :input delete-node-input :output
                                       delete-node-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/networks/{NetworkId}/nodes/{NodeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-accessor :shape-name "GetAccessor"
                                       :input get-accessor-input :output
                                       get-accessor-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/accessors/{AccessorId}" :code 200)

(smithy/sdk/operation:define-operation get-member :shape-name "GetMember"
                                       :input get-member-input :output
                                       get-member-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/members/{MemberId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network :shape-name "GetNetwork"
                                       :input get-network-input :output
                                       get-network-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}" :code 200)

(smithy/sdk/operation:define-operation get-node :shape-name "GetNode" :input
                                       get-node-input :output get-node-output
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/nodes/{NodeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-proposal :shape-name "GetProposal"
                                       :input get-proposal-input :output
                                       get-proposal-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/proposals/{ProposalId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-accessors :shape-name
                                       "ListAccessors" :input
                                       list-accessors-input :output
                                       list-accessors-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/accessors" :code
                                       200)

(smithy/sdk/operation:define-operation list-invitations :shape-name
                                       "ListInvitations" :input
                                       list-invitations-input :output
                                       list-invitations-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/invitations" :code
                                       200)

(smithy/sdk/operation:define-operation list-members :shape-name "ListMembers"
                                       :input list-members-input :output
                                       list-members-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/members" :code
                                       200)

(smithy/sdk/operation:define-operation list-networks :shape-name "ListNetworks"
                                       :input list-networks-input :output
                                       list-networks-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/networks" :code 200)

(smithy/sdk/operation:define-operation list-nodes :shape-name "ListNodes"
                                       :input list-nodes-input :output
                                       list-nodes-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/nodes" :code 200)

(smithy/sdk/operation:define-operation list-proposal-votes :shape-name
                                       "ListProposalVotes" :input
                                       list-proposal-votes-input :output
                                       list-proposal-votes-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/proposals/{ProposalId}/votes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-proposals :shape-name
                                       "ListProposals" :input
                                       list-proposals-input :output
                                       list-proposals-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/networks/{NetworkId}/proposals" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-invitation :shape-name
                                       "RejectInvitation" :input
                                       reject-invitation-input :output
                                       reject-invitation-output :errors
                                       (access-denied-exception
                                        illegal-action-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/invitations/{InvitationId}" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-member :shape-name "UpdateMember"
                                       :input update-member-input :output
                                       update-member-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/networks/{NetworkId}/members/{MemberId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-node :shape-name "UpdateNode"
                                       :input update-node-input :output
                                       update-node-output :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/networks/{NetworkId}/nodes/{NodeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation vote-on-proposal :shape-name
                                       "VoteOnProposal" :input
                                       vote-on-proposal-input :output
                                       vote-on-proposal-output :errors
                                       (access-denied-exception
                                        illegal-action-exception
                                        internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/networks/{NetworkId}/proposals/{ProposalId}/votes"
                                       :code 200)
