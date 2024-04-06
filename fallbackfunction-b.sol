// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
//Creating the sender contract
contract Sender
{
 function transferEther() public payable
 {
 require (msg.value>=2 ether,"Insufficient Ether Sent");
 (bool sent,) = payable (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4).call{value: 1
ether}("Transaction completed!");
 require(sent, "Transaction failed!");
 }
 function getBalance() public view returns(uint){
 return address(this).balance;
 }
}