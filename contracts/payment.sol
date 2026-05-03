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
        lastPerson = msg.sender; // recupere l'adresse de la personne qui a envoye de l'argent
        balance = balance + msg.value;
    }
}