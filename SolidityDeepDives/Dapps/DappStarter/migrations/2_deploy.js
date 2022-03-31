const SimpleContract = artifacts.require("OGSmartContract");

module.exports = function(deployer) {
  deployer.deploy(SimpleContract);
};