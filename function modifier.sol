// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract UserInfo {
    string public userName;
    uint public userAge;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }

    function setUserInfo(string memory name, uint age) public {
        userName = name;
        userAge = age;
    }

    function getUserInfo() public view returns (string memory, uint) {
        return (userName, userAge);
    }
}
