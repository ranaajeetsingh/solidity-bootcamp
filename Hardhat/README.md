**Hardhat**

1. Hardhat is a development environment to compile, deploy, test and debug your Ethereum software.
2. It is written in JavaScript language.

**Hardhat vs Truffle

**Hardhat**

1. Faster migration process.
2. Less gas fee during migration.
3. Debugging is easy.

**Truffle**

1. Poor migration process.
2. More gas fee during migration.
3. Not good as compared to Hardhat.

**Installation Hardhat**

npm init --yes

npm install --save-dev hardhat

npx hardhat

npm install --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle 
ethereum-waffle chai

**Configuration**

hardhat.cofig.js

require("@nomiclabs/hardhat-waffle")

**Compilation**

npx hardhat compile

**Testing**

npx hardhat test

**Debugging**

import "hardhat/console.sol";

**Doployment**

npx hardhat run scripts/deploy.js //Hardhat Network

npx hardhat run scripts/deploy.js --network ropsten //Ropsten Test Network