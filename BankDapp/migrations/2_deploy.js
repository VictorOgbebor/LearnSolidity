const BankTeller = artifacts.require("BankTeller");

module.exports = function(deployer) {
  deployer.deploy(BankTeller);
};