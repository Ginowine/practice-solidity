// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract Mapping {

    mapping(address => uint) public myMap;

    function get(address _addr) public view returns(uint){
        return myMap[_addr];
    }

    function set (address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function remove (address _addr) public {
        delete myMap[_addr];
    }
}