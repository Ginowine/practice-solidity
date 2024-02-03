// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GToken is ERC20 {

    // declare the initialSupply
    uint256 constant initialSupply = 1000000 * (10 ** uint256(decimals()));

    constructor() ERC20("GToken", "GT"){
        // call the mint function from ERC20 contract and
        // pass the address and initial supply
        _mint(msg.sender, initialSupply);
    }
}