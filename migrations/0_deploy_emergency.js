var EmergencyCall = artifacts.require("./EmergencyCall.sol");

module.exports = function(deployer) {
  deployer.deploy(EmergencyCall);
};
