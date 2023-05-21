/**
* @type import('hardhat/config').HardhatUserConfig
*/

require('dotenv').config(); //loads all the information from the env file to the development environment because this is the first file the hardhat will load
require("@nomiclabs/hardhat-ethers"); //we will use this plugin called ethers - which will help us write our deploy script and also used for frontend 

const { API_URL, PRIVATE_KEY } = process.env;

module.exports = {
   solidity: "0.7.3",
   defaultNetwork: "sepolia",
   networks: {
      hardhat: {},
      sepolia: {
         url: API_URL, //  we want to deploy to our app here - this is how we are going to talk to the ethereum blockchain  
         accounts: [`0x${PRIVATE_KEY}`] // the account that we use to deploy is our account - this is who im in the ethereum universe 
      }
   },
}

// 0xBa73951aBE0a8c98F058B092D5E715DB28BB0400