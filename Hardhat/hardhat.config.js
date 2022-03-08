/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require("@nomiclabs/hardhat-waffle")

const ALCHEMY_API_KEY = "AWKwLKJvt2AGHEd0vUx3uwTX1pxxXya6";
const ROPSTEN_PRIVATE_KEY = "ef644afe0bc33538c60b9ff19ddd8f3784b1f0c2aa169c35e076819dbebc4be3";

module.exports = {
  solidity: "0.8.9",

  networks:{
    ropsten:{
      url:`https://eth-ropsten.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts:[`0x${ROPSTEN_PRIVATE_KEY}`]
    }
  }
};
