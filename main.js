
var web3 = require('web3');
//web3 = new Web3(new Web3.providers.HttpProvider("localhost:8545"));
web3.providers.HttpProvider = new web3.providers.HttpProvider("localhost:8545");

var contractAddress = "0x24f0e15604c5a35c6e62d4301c6db6dc2fa756a0";

var abi = [
    {
      "constant": false,
      "inputs": [],
      "name": "sendEmergencyCall",
      "outputs": [],
      "payable": false,
      "type": "function"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "name": "location",
          "type": "string"
        }
      ],
      "name": "Notify_emergency_services",
      "type": "event"
    }
  ];

  console.log(web3);
  var contract = web3.modules.Eth.contract(abi).at(contractAddress);
  
  //contract.sendEmergencyCall();
