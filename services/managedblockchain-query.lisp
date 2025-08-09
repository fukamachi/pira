(uiop/package:define-package #:pira/managedblockchain-query (:use)
                             (:export #:access-denied-exception
                              #:address-identifier-filter #:asset-contract
                              #:asset-contract-list #:batch-get-token-balance
                              #:batch-get-token-balance-error-item
                              #:batch-get-token-balance-errors
                              #:batch-get-token-balance-input
                              #:batch-get-token-balance-input-item
                              #:batch-get-token-balance-output
                              #:batch-get-token-balance-output-item
                              #:batch-get-token-balance-output-list
                              #:block-hash #:blockchain-instant #:chain-address
                              #:chain-addresses #:confirmation-status
                              #:confirmation-status-filter
                              #:confirmation-status-include-list
                              #:contract-filter #:contract-identifier
                              #:contract-metadata #:error-type
                              #:exception-message #:execution-status
                              #:get-asset-contract #:get-asset-contract-input
                              #:get-asset-contract-output #:get-token-balance
                              #:get-token-balance-input
                              #:get-token-balance-input-list
                              #:get-token-balance-output #:get-transaction
                              #:get-transaction-input #:get-transaction-output
                              #:internal-server-exception
                              #:list-asset-contracts
                              #:list-asset-contracts-input
                              #:list-asset-contracts-output
                              #:list-filtered-transaction-events
                              #:list-filtered-transaction-events-input
                              #:list-filtered-transaction-events-output
                              #:list-filtered-transaction-events-sort
                              #:list-filtered-transaction-events-sort-by
                              #:list-token-balances #:list-token-balances-input
                              #:list-token-balances-output
                              #:list-transaction-events
                              #:list-transaction-events-input
                              #:list-transaction-events-output
                              #:list-transactions #:list-transactions-input
                              #:list-transactions-output
                              #:list-transactions-sort
                              #:list-transactions-sort-by #:next-token
                              #:owner-filter #:owner-identifier #:query-network
                              #:query-token-id #:query-token-standard
                              #:query-transaction-event-type
                              #:query-transaction-hash #:query-transaction-id
                              #:quota-code #:resource-id
                              #:resource-not-found-exception #:resource-type
                              #:service-code #:service-quota-exceeded-exception
                              #:sort-order #:throttling-exception
                              #:tieton-chain-query-service #:time-filter
                              #:token-balance #:token-balance-list
                              #:token-filter #:token-identifier #:transaction
                              #:transaction-event #:transaction-event-list
                              #:transaction-output-item
                              #:transaction-output-list #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vout-filter))
(common-lisp:in-package #:pira/managedblockchain-query)

(smithy/sdk/service:define-service tieton-chain-query-service :shape-name
                                   "TietonChainQueryService" :version
                                   "2023-05-04" :title
                                   "Amazon Managed Blockchain Query" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ManagedBlockchain Query")
                                      ("arnNamespace"
                                       . "managedblockchain-query"))
                                     ("aws.auth#sigv4"
                                      ("name" . "managedblockchain-query"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure address-identifier-filter common-lisp:nil
                                    ((transaction-event-to-address :target-type
                                      chain-addresses :required common-lisp:t
                                      :member-name
                                      "transactionEventToAddress"))
                                    (:shape-name "AddressIdentifierFilter"))

(smithy/sdk/shapes:define-structure asset-contract common-lisp:nil
                                    ((contract-identifier :target-type
                                      contract-identifier :required
                                      common-lisp:t :member-name
                                      "contractIdentifier")
                                     (token-standard :target-type
                                      query-token-standard :required
                                      common-lisp:t :member-name
                                      "tokenStandard")
                                     (deployer-address :target-type
                                      chain-address :required common-lisp:t
                                      :member-name "deployerAddress"))
                                    (:shape-name "AssetContract"))

(smithy/sdk/shapes:define-list asset-contract-list :member asset-contract)

(smithy/sdk/shapes:define-structure batch-get-token-balance-error-item
                                    common-lisp:nil
                                    ((token-identifier :target-type
                                      token-identifier :member-name
                                      "tokenIdentifier")
                                     (owner-identifier :target-type
                                      owner-identifier :member-name
                                      "ownerIdentifier")
                                     (at-blockchain-instant :target-type
                                      blockchain-instant :member-name
                                      "atBlockchainInstant")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "errorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "errorMessage")
                                     (error-type :target-type error-type
                                      :required common-lisp:t :member-name
                                      "errorType"))
                                    (:shape-name
                                     "BatchGetTokenBalanceErrorItem"))

(smithy/sdk/shapes:define-list batch-get-token-balance-errors :member
                               batch-get-token-balance-error-item)

(smithy/sdk/shapes:define-input batch-get-token-balance-input common-lisp:nil
                                ((get-token-balance-inputs :target-type
                                  get-token-balance-input-list :member-name
                                  "getTokenBalanceInputs"))
                                (:shape-name "BatchGetTokenBalanceInput"))

(smithy/sdk/shapes:define-structure batch-get-token-balance-input-item
                                    common-lisp:nil
                                    ((token-identifier :target-type
                                      token-identifier :required common-lisp:t
                                      :member-name "tokenIdentifier")
                                     (owner-identifier :target-type
                                      owner-identifier :required common-lisp:t
                                      :member-name "ownerIdentifier")
                                     (at-blockchain-instant :target-type
                                      blockchain-instant :member-name
                                      "atBlockchainInstant"))
                                    (:shape-name
                                     "BatchGetTokenBalanceInputItem"))

(smithy/sdk/shapes:define-output batch-get-token-balance-output common-lisp:nil
                                 ((token-balances :target-type
                                   batch-get-token-balance-output-list
                                   :required common-lisp:t :member-name
                                   "tokenBalances")
                                  (errors :target-type
                                   batch-get-token-balance-errors :required
                                   common-lisp:t :member-name "errors"))
                                 (:shape-name "BatchGetTokenBalanceOutput"))

(smithy/sdk/shapes:define-structure batch-get-token-balance-output-item
                                    common-lisp:nil
                                    ((owner-identifier :target-type
                                      owner-identifier :member-name
                                      "ownerIdentifier")
                                     (token-identifier :target-type
                                      token-identifier :member-name
                                      "tokenIdentifier")
                                     (balance :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "balance")
                                     (at-blockchain-instant :target-type
                                      blockchain-instant :required
                                      common-lisp:t :member-name
                                      "atBlockchainInstant")
                                     (last-updated-time :target-type
                                      blockchain-instant :member-name
                                      "lastUpdatedTime"))
                                    (:shape-name
                                     "BatchGetTokenBalanceOutputItem"))

(smithy/sdk/shapes:define-list batch-get-token-balance-output-list :member
                               batch-get-token-balance-output-item)

(smithy/sdk/shapes:define-type block-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure blockchain-instant common-lisp:nil
                                    ((time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "time"))
                                    (:shape-name "BlockchainInstant"))

(smithy/sdk/shapes:define-type chain-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list chain-addresses :member chain-address)

(smithy/sdk/shapes:define-type confirmation-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure confirmation-status-filter common-lisp:nil
                                    ((include :target-type
                                      confirmation-status-include-list
                                      :required common-lisp:t :member-name
                                      "include"))
                                    (:shape-name "ConfirmationStatusFilter"))

(smithy/sdk/shapes:define-list confirmation-status-include-list :member
                               confirmation-status)

(smithy/sdk/shapes:define-structure contract-filter common-lisp:nil
                                    ((network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (token-standard :target-type
                                      query-token-standard :required
                                      common-lisp:t :member-name
                                      "tokenStandard")
                                     (deployer-address :target-type
                                      chain-address :required common-lisp:t
                                      :member-name "deployerAddress"))
                                    (:shape-name "ContractFilter"))

(smithy/sdk/shapes:define-structure contract-identifier common-lisp:nil
                                    ((network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (contract-address :target-type
                                      chain-address :required common-lisp:t
                                      :member-name "contractAddress"))
                                    (:shape-name "ContractIdentifier"))

(smithy/sdk/shapes:define-structure contract-metadata common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (symbol :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "symbol")
                                     (decimals :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "decimals"))
                                    (:shape-name "ContractMetadata"))

(smithy/sdk/shapes:define-type error-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-asset-contract-input common-lisp:nil
                                ((contract-identifier :target-type
                                  contract-identifier :required common-lisp:t
                                  :member-name "contractIdentifier"))
                                (:shape-name "GetAssetContractInput"))

(smithy/sdk/shapes:define-output get-asset-contract-output common-lisp:nil
                                 ((contract-identifier :target-type
                                   contract-identifier :required common-lisp:t
                                   :member-name "contractIdentifier")
                                  (token-standard :target-type
                                   query-token-standard :required common-lisp:t
                                   :member-name "tokenStandard")
                                  (deployer-address :target-type chain-address
                                   :required common-lisp:t :member-name
                                   "deployerAddress")
                                  (metadata :target-type contract-metadata
                                   :member-name "metadata"))
                                 (:shape-name "GetAssetContractOutput"))

(smithy/sdk/shapes:define-input get-token-balance-input common-lisp:nil
                                ((token-identifier :target-type
                                  token-identifier :required common-lisp:t
                                  :member-name "tokenIdentifier")
                                 (owner-identifier :target-type
                                  owner-identifier :required common-lisp:t
                                  :member-name "ownerIdentifier")
                                 (at-blockchain-instant :target-type
                                  blockchain-instant :member-name
                                  "atBlockchainInstant"))
                                (:shape-name "GetTokenBalanceInput"))

(smithy/sdk/shapes:define-list get-token-balance-input-list :member
                               batch-get-token-balance-input-item)

(smithy/sdk/shapes:define-output get-token-balance-output common-lisp:nil
                                 ((owner-identifier :target-type
                                   owner-identifier :member-name
                                   "ownerIdentifier")
                                  (token-identifier :target-type
                                   token-identifier :member-name
                                   "tokenIdentifier")
                                  (balance :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "balance")
                                  (at-blockchain-instant :target-type
                                   blockchain-instant :required common-lisp:t
                                   :member-name "atBlockchainInstant")
                                  (last-updated-time :target-type
                                   blockchain-instant :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name "GetTokenBalanceOutput"))

(smithy/sdk/shapes:define-input get-transaction-input common-lisp:nil
                                ((transaction-hash :target-type
                                  query-transaction-hash :member-name
                                  "transactionHash")
                                 (transaction-id :target-type
                                  query-transaction-id :member-name
                                  "transactionId")
                                 (network :target-type query-network :required
                                  common-lisp:t :member-name "network"))
                                (:shape-name "GetTransactionInput"))

(smithy/sdk/shapes:define-output get-transaction-output common-lisp:nil
                                 ((transaction :target-type transaction
                                   :required common-lisp:t :member-name
                                   "transaction"))
                                 (:shape-name "GetTransactionOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-asset-contracts-input common-lisp:nil
                                ((contract-filter :target-type contract-filter
                                  :required common-lisp:t :member-name
                                  "contractFilter")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListAssetContractsInput"))

(smithy/sdk/shapes:define-output list-asset-contracts-output common-lisp:nil
                                 ((contracts :target-type asset-contract-list
                                   :required common-lisp:t :member-name
                                   "contracts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetContractsOutput"))

(smithy/sdk/shapes:define-input list-filtered-transaction-events-input
                                common-lisp:nil
                                ((network :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "network")
                                 (address-identifier-filter :target-type
                                  address-identifier-filter :required
                                  common-lisp:t :member-name
                                  "addressIdentifierFilter")
                                 (time-filter :target-type time-filter
                                  :member-name "timeFilter")
                                 (vout-filter :target-type vout-filter
                                  :member-name "voutFilter")
                                 (confirmation-status-filter :target-type
                                  confirmation-status-filter :member-name
                                  "confirmationStatusFilter")
                                 (sort :target-type
                                  list-filtered-transaction-events-sort
                                  :member-name "sort")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name
                                 "ListFilteredTransactionEventsInput"))

(smithy/sdk/shapes:define-output list-filtered-transaction-events-output
                                 common-lisp:nil
                                 ((events :target-type transaction-event-list
                                   :required common-lisp:t :member-name
                                   "events")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListFilteredTransactionEventsOutput"))

(smithy/sdk/shapes:define-structure list-filtered-transaction-events-sort
                                    common-lisp:nil
                                    ((sort-by :target-type
                                      list-filtered-transaction-events-sort-by
                                      :member-name "sortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder"))
                                    (:shape-name
                                     "ListFilteredTransactionEventsSort"))

(smithy/sdk/shapes:define-type list-filtered-transaction-events-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-token-balances-input common-lisp:nil
                                ((owner-filter :target-type owner-filter
                                  :member-name "ownerFilter")
                                 (token-filter :target-type token-filter
                                  :required common-lisp:t :member-name
                                  "tokenFilter")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListTokenBalancesInput"))

(smithy/sdk/shapes:define-output list-token-balances-output common-lisp:nil
                                 ((token-balances :target-type
                                   token-balance-list :required common-lisp:t
                                   :member-name "tokenBalances")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTokenBalancesOutput"))

(smithy/sdk/shapes:define-input list-transaction-events-input common-lisp:nil
                                ((transaction-hash :target-type
                                  query-transaction-hash :member-name
                                  "transactionHash")
                                 (transaction-id :target-type
                                  query-transaction-id :member-name
                                  "transactionId")
                                 (network :target-type query-network :required
                                  common-lisp:t :member-name "network")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListTransactionEventsInput"))

(smithy/sdk/shapes:define-output list-transaction-events-output common-lisp:nil
                                 ((events :target-type transaction-event-list
                                   :required common-lisp:t :member-name
                                   "events")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTransactionEventsOutput"))

(smithy/sdk/shapes:define-input list-transactions-input common-lisp:nil
                                ((address :target-type chain-address :required
                                  common-lisp:t :member-name "address")
                                 (network :target-type query-network :required
                                  common-lisp:t :member-name "network")
                                 (from-blockchain-instant :target-type
                                  blockchain-instant :member-name
                                  "fromBlockchainInstant")
                                 (to-blockchain-instant :target-type
                                  blockchain-instant :member-name
                                  "toBlockchainInstant")
                                 (sort :target-type list-transactions-sort
                                  :member-name "sort")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (confirmation-status-filter :target-type
                                  confirmation-status-filter :member-name
                                  "confirmationStatusFilter"))
                                (:shape-name "ListTransactionsInput"))

(smithy/sdk/shapes:define-output list-transactions-output common-lisp:nil
                                 ((transactions :target-type
                                   transaction-output-list :required
                                   common-lisp:t :member-name "transactions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTransactionsOutput"))

(smithy/sdk/shapes:define-structure list-transactions-sort common-lisp:nil
                                    ((sort-by :target-type
                                      list-transactions-sort-by :member-name
                                      "sortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder"))
                                    (:shape-name "ListTransactionsSort"))

(smithy/sdk/shapes:define-type list-transactions-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure owner-filter common-lisp:nil
                                    ((address :target-type chain-address
                                      :required common-lisp:t :member-name
                                      "address"))
                                    (:shape-name "OwnerFilter"))

(smithy/sdk/shapes:define-structure owner-identifier common-lisp:nil
                                    ((address :target-type chain-address
                                      :required common-lisp:t :member-name
                                      "address"))
                                    (:shape-name "OwnerIdentifier"))

(smithy/sdk/shapes:define-type query-network smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-token-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-token-standard
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-transaction-event-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-transaction-hash
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-transaction-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-filter common-lisp:nil
                                    ((from :target-type blockchain-instant
                                      :member-name "from")
                                     (to :target-type blockchain-instant
                                      :member-name "to"))
                                    (:shape-name "TimeFilter"))

(smithy/sdk/shapes:define-structure token-balance common-lisp:nil
                                    ((owner-identifier :target-type
                                      owner-identifier :member-name
                                      "ownerIdentifier")
                                     (token-identifier :target-type
                                      token-identifier :member-name
                                      "tokenIdentifier")
                                     (balance :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "balance")
                                     (at-blockchain-instant :target-type
                                      blockchain-instant :required
                                      common-lisp:t :member-name
                                      "atBlockchainInstant")
                                     (last-updated-time :target-type
                                      blockchain-instant :member-name
                                      "lastUpdatedTime"))
                                    (:shape-name "TokenBalance"))

(smithy/sdk/shapes:define-list token-balance-list :member token-balance)

(smithy/sdk/shapes:define-structure token-filter common-lisp:nil
                                    ((network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (contract-address :target-type
                                      chain-address :member-name
                                      "contractAddress")
                                     (token-id :target-type query-token-id
                                      :member-name "tokenId"))
                                    (:shape-name "TokenFilter"))

(smithy/sdk/shapes:define-structure token-identifier common-lisp:nil
                                    ((network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (contract-address :target-type
                                      chain-address :member-name
                                      "contractAddress")
                                     (token-id :target-type query-token-id
                                      :member-name "tokenId"))
                                    (:shape-name "TokenIdentifier"))

(smithy/sdk/shapes:define-structure transaction common-lisp:nil
                                    ((network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (block-hash :target-type block-hash
                                      :member-name "blockHash")
                                     (transaction-hash :target-type
                                      query-transaction-hash :required
                                      common-lisp:t :member-name
                                      "transactionHash")
                                     (block-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "blockNumber")
                                     (transaction-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "transactionTimestamp")
                                     (transaction-index :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "transactionIndex")
                                     (number-of-transactions :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "numberOfTransactions")
                                     (to :target-type chain-address :required
                                      common-lisp:t :member-name "to")
                                     (from :target-type chain-address
                                      :member-name "from")
                                     (contract-address :target-type
                                      chain-address :member-name
                                      "contractAddress")
                                     (gas-used :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "gasUsed")
                                     (cumulative-gas-used :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "cumulativeGasUsed")
                                     (effective-gas-price :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "effectiveGasPrice")
                                     (signature-v :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "signatureV")
                                     (signature-r :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "signatureR")
                                     (signature-s :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "signatureS")
                                     (transaction-fee :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "transactionFee")
                                     (transaction-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "transactionId")
                                     (confirmation-status :target-type
                                      confirmation-status :member-name
                                      "confirmationStatus")
                                     (execution-status :target-type
                                      execution-status :member-name
                                      "executionStatus"))
                                    (:shape-name "Transaction"))

(smithy/sdk/shapes:define-structure transaction-event common-lisp:nil
                                    ((network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (transaction-hash :target-type
                                      query-transaction-hash :required
                                      common-lisp:t :member-name
                                      "transactionHash")
                                     (event-type :target-type
                                      query-transaction-event-type :required
                                      common-lisp:t :member-name "eventType")
                                     (from :target-type chain-address
                                      :member-name "from")
                                     (to :target-type chain-address
                                      :member-name "to")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (contract-address :target-type
                                      chain-address :member-name
                                      "contractAddress")
                                     (token-id :target-type query-token-id
                                      :member-name "tokenId")
                                     (transaction-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "transactionId")
                                     (vout-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "voutIndex")
                                     (vout-spent :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "voutSpent")
                                     (spent-vout-transaction-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "spentVoutTransactionId")
                                     (spent-vout-transaction-hash :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "spentVoutTransactionHash")
                                     (spent-vout-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "spentVoutIndex")
                                     (blockchain-instant :target-type
                                      blockchain-instant :member-name
                                      "blockchainInstant")
                                     (confirmation-status :target-type
                                      confirmation-status :member-name
                                      "confirmationStatus"))
                                    (:shape-name "TransactionEvent"))

(smithy/sdk/shapes:define-list transaction-event-list :member transaction-event)

(smithy/sdk/shapes:define-structure transaction-output-item common-lisp:nil
                                    ((transaction-hash :target-type
                                      query-transaction-hash :required
                                      common-lisp:t :member-name
                                      "transactionHash")
                                     (transaction-id :target-type
                                      query-transaction-id :member-name
                                      "transactionId")
                                     (network :target-type query-network
                                      :required common-lisp:t :member-name
                                      "network")
                                     (transaction-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "transactionTimestamp")
                                     (confirmation-status :target-type
                                      confirmation-status :member-name
                                      "confirmationStatus"))
                                    (:shape-name "TransactionOutputItem"))

(smithy/sdk/shapes:define-list transaction-output-list :member
                               transaction-output-item)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vout-filter common-lisp:nil
                                    ((vout-spent :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "voutSpent"))
                                    (:shape-name "VoutFilter"))

(smithy/sdk/operation:define-operation batch-get-token-balance :shape-name
                                       "BatchGetTokenBalance" :input
                                       batch-get-token-balance-input :output
                                       batch-get-token-balance-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/batch-get-token-balance")

(smithy/sdk/operation:define-operation get-asset-contract :shape-name
                                       "GetAssetContract" :input
                                       get-asset-contract-input :output
                                       get-asset-contract-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-asset-contract")

(smithy/sdk/operation:define-operation get-token-balance :shape-name
                                       "GetTokenBalance" :input
                                       get-token-balance-input :output
                                       get-token-balance-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-token-balance")

(smithy/sdk/operation:define-operation get-transaction :shape-name
                                       "GetTransaction" :input
                                       get-transaction-input :output
                                       get-transaction-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/get-transaction")

(smithy/sdk/operation:define-operation list-asset-contracts :shape-name
                                       "ListAssetContracts" :input
                                       list-asset-contracts-input :output
                                       list-asset-contracts-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-asset-contracts")

(smithy/sdk/operation:define-operation list-filtered-transaction-events
                                       :shape-name
                                       "ListFilteredTransactionEvents" :input
                                       list-filtered-transaction-events-input
                                       :output
                                       list-filtered-transaction-events-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-filtered-transaction-events")

(smithy/sdk/operation:define-operation list-token-balances :shape-name
                                       "ListTokenBalances" :input
                                       list-token-balances-input :output
                                       list-token-balances-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-token-balances")

(smithy/sdk/operation:define-operation list-transaction-events :shape-name
                                       "ListTransactionEvents" :input
                                       list-transaction-events-input :output
                                       list-transaction-events-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-transaction-events")

(smithy/sdk/operation:define-operation list-transactions :shape-name
                                       "ListTransactions" :input
                                       list-transactions-input :output
                                       list-transactions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-transactions")
