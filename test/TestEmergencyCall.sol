pragma solidity ^0.4.4;


import "truffle/Assert.sol";
import "../contracts/EmergencyCall.sol";


contract TestEmergencyCall {

    function testInitialBalanceUsingDeployedContract() {

        EmergencyCall emergency = new EmergencyCall();

        uint expected = 10000;

        //Assert.equal(emergency.sendEmergencyCall(), expected, "Owner should have 10000 MetaCoin initially");
    }
}
