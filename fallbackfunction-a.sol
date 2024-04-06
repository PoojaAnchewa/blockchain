// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract FallBackFunction {
string public call;
fallback() external payable {
call = "I am a fallback function!";
 }
function getBalance() public view returns (uint) {
return address(this).balance;
 }
}


