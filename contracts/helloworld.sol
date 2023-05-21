// SPDX-License-Identifier: MIT
pragma solidity >=0.7.3;

contract helloworld {
    //when the event is broadcast everyone will be able to see the old and the new string
    event UpdatedMessages(string oldstring, string newstring);

    //state variable that we want our contract to keep track
    // visibility is public so that everyone can read from it after we deploy to the blockchain
    // this state variable will be stored permantely on the blockchain and anybody can access it
    string public message;

    //this method runs only one time when the smart contract is deployed
    // when this contract is deployed , we require to an argument to be passed in as well
    constructor(string memory initMessage) {
        message = initMessage;
    }

    //this method will update the state variable in the contract
    // anyone can come and udpate the message in the smart contract
    function update(string memory _newMessage) public {
        string memory oldMesasge = message;
        message = _newMessage;
        emit UpdatedMessages(oldMesasge, _newMessage);
    }
}
