const PrintMyNameContract = artifacts.require("PrintMyName");

module.exports = function(deployer) {
  deployer.deploy(PrintMyNameContract);
};