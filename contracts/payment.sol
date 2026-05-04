// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract payment{

    address lastPerson;
    uint balance;

    function getLastPerson() public view returns(address){
        return lastPerson;
    }

    function getBalance() public view returns(uint){
        return balance;
    }

    receive() external payable {
        lastPerson = msg.sender; // get address of the caller 
        balance = balance + msg.value;
    }
}