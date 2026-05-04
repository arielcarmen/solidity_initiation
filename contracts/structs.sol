// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract strucures {

    struct balance { // Class like in solidity
        uint money;
        uint numPayments;
    }

    function getBalance() public view returns(uint){
        return Balances[msg.sender].money;
    }

    function getNumPayments() public view returns(uint){
        return Balances[msg.sender].numPayments;
    }

    mapping(address => balance) Balances;

    receive() external payable { 
        Balances[msg.sender].money += msg.value;
        Balances[msg.sender].numPayments += 1;
    }
}