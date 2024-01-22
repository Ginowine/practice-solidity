// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19;

contract Account {
    uint public balance;
    uint public constant MAX_UINT = 2 ** 256 - 1;

    function deposit (uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }
}