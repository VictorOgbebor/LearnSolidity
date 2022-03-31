const SetValuesContract = artifacts.require("SetValues"); // should match solidity files

module.exports = function(deployer) {
  deployer.deploy(SetValuesContract);
};