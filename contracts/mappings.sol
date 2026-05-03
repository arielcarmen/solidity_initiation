// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract mappings {
    mapping(address => uint) Balances;

    function getAddressBalance(address _adresse) public view returns(uint){
        return Balances[_adresse];
    }
    
    receive() external payable { 
        // msg.value
        // msg.sender
        Balances[msg.sender] = msg.value;
    }
}