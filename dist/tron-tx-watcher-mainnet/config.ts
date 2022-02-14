const config: any = {
    MAINNET_NODE: "http://tron-mainnet:8091",
    TESTNET_NODE: "http://tron-nile:9091",

    mongoUrl: "mongodb://mongo-tron-tx-watcher:27017/",
    dbName: "tronTxs",
    dbNameTestnet: "tronTxsTestnet",

    bunchSize: 100,
    BNstartSync: 36773500,
    BNstartSyncTestnet: 21204000,
};

export default config;
