pragma solidity ^0.4.4;

contract EmergencyCall {
    address[] reported_emergencies;

    event Notify_emergency_services(string location);

    function sendEmergencyCall() returns (bool received) {
        reported_emergencies.push(msg.sender);
        if (reported_emergencies.length > 5) {
            Notify_emergency_services("MOSI");
            return true;
        }

        return false;
    }

    function getTotalEmergencies() returns (uint) {
        return reported_emergencies.length;
    }
}