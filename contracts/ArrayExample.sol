// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract ArrayExample {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public arr3;

    function get(uint i) public view returns(uint){
        return arr[i];
    }
    function getArr() public view returns(uint[] memory){
        return arr;
    }
    function push(uint i) public {
        arr.push(i);
    }
    function pop() public {
        arr.pop();
    }
    function getLength() public view returns (uint){
        return arr.length;
    }
    function remove (uint index) public {
        delete arr[index];
    }
    function examples() external pure {
        uint[] memory a = new uint[](5);
    }
}