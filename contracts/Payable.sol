// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Payable {
    address payable public owner;
    uint256 public balance;

    constructor()payable {
        owner = payable(msg.sender);
    }

    function deposit () public payable {
        balance += msg.value;
    }

    // calling this function will throw an error since it is not payable
    function notPayable() public{}

    function withdaw() public {
        require(msg.sender == owner, "Only owner can call this function");
        uint256 amount = address (this).balance;

        (bool success, ) = payable (msg.sender).call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    function transfer (address payable _to, uint256 _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Transfer failed");
    }

}