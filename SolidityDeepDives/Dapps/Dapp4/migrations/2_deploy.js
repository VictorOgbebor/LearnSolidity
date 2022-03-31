const ComplexStorageContract = artifacts.require("ComplexStorage");

module.exports = function(deployer) {
  deployer.deploy(ComplexStorageContract);
};