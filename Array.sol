// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringArrayExample {
    string[] public strings;

    function addString(string memory _str) public {
        strings.push(_str);
    }

    function getString(uint _index) public view returns (string memory) {
        require(_index < strings.length, "Index out of bounds");
        return strings[_index];
    }

    function getStringCount() public view returns (uint) {
        return strings.length;
    }
}

