require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    buildbear: {
      url: "https://backend.buildbear.io/node/priceless-tu-095af7",
    }
  }
};