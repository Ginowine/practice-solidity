// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19;

contract EnumDeclaration {

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
}