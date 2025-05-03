require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    bsc: {
      url: "https://bsc-dataseed1.binance.org/", // أو process.env.BSC_RPC إذا تشتغل معك .env
      accounts: [process.env.PRIVATE_KEY]
    }
  },
  etherscan: {
    apiKey: {
      bsc: process.env.BSCSCAN_API_KEY
    }
  },
  sourcify: {
    enabled: false // لإزالة رسالة Sourcify
  }
};
