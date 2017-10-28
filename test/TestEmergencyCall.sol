pragma solidity ^0.4.4;


import "truffle/Assert.sol";
import "../contracts/EmergencyCall.sol";


contract TestEmergencyCall {

    function testInitialBalanceUsingDeployedContract() {
        EmergencyCall emergency = EmergencyCall(DeployedAddresses.EmergencyCall());

        uint expected = 10000;

        Assert.equal(emergency.sendEmergencyCall(), expected, "Owner should have 10000 MetaCoin initially");
    }

    function testInitialBalanceWithNewMetaCoin() {
        MetaCoin meta = new MetaCoin();

        uint expected = 10000;

        Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 MetaCoin initially");
    }

}
