// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract Functions {

    uint[] public arr;

    function returnMultipleValues () public pure returns(uint, bool, uint){
        return(1, true, 2);
    }

    function namedVariables () public pure returns(uint x, bool b, uint y){
        return(1, false, 2);
    }

    function assigned() public pure returns(uint x, bool b, uint y){
        x = 1;
        b = true;
        y = 2;
    }

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}