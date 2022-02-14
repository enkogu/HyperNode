/**
 * Global and chain specific config.
 */
const config = {
    bitcoreNodeUrl: "http://bitcore-node:3000",
    bitcoin: {
        confirmationsToSucceed: 2,
    },
    ethereum: {
        confirmationsToSucceed: 2,
        mainnet: {
            txScanApiKey: "8S8EEX4EM4ZBFZPW4HNHPVW85VWGC86RF4",
            txScanProvider: "https://api.etherscan.io",
            httpProviderHost:
                "https://mainnet.infura.io/v3/7c8d84a5d0324baa9f3539ac478014aa",
        },
        rinkeby: {
            txScanApiKey: "8S8EEX4EM4ZBFZPW4HNHPVW85VWGC86RF4",
            txScanProvider: "https://api-rinkeby.etherscan.io",
            httpProviderHost:
                "https://rinkeby.infura.io/v3/7c8d84a5d0324baa9f3539ac478014aa",
        },
    },
    tron: {
        bandwidthPointsRate: 1,
        subTrxToBandwidthRate: 1000,
        useTronGridAPI: false,
        // technicalPrivateKey is not a secure data, it needs for contract calls
        technicalPrivateKey:
            "8a91e55e2e8907e2d34220e7ee31e446ddc770a90fcc16908e41971f16651ed4",
        parsedTxs: {
            mongoUrl: "mongodb://mongo-tron-tx-watcher:27017/",
            dbMainnet: "tronTxs",
            dbTestnet: "tronTxsTestnet",
            collectionName: "Transactions",
        },
        mainnet: {
            fullHost: "https://api.trongrid.io",
            solidityNode: "https://api.trongrid.io",
            usdtAddress: "TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t",
        },
        nile: {
            fullHost: "https://nile.trongrid.io",
            solidityNode: "https://nile.trongrid.io",
            usdtAddress: "TXYZopYRdj2D9XRtbG411XZZ3kM5VkAeBf",
            winAddress: "TU2T8vpHZhCNY8fXGVaHyeZrKm8s6HEXWe",
        },
    },
};

export default config;