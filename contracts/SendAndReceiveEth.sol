// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SendAndReceiveEth {
    // This method is no longer recommended for sending Ether
    function sendViaTransfer(address payable _to)public payable {
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable{
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send ether");
    }

    function sendViaCall(address payable _to) public payable{
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send message");
    }
}