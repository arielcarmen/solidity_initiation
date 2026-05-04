// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Mappings {
    mapping(address => uint) Balances; // A key value array mapping addresses as keys to uints

    function getAddressBalance(address _adresse) public view returns(uint){
        return Balances[_adresse];
    }
    
    receive() external payable { 
        // msg.value 
        // msg.sender
        Balances[msg.sender] = msg.value;
    }
}