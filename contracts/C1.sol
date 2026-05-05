// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

interface interface1 {
    function setNumber(uint _number) external; 
    function getNumber() external view returns (uint);  
}

contract C1 {
    
    uint number;
    
    function setNumber(uint _number) external {
        number = _number;
    }

    function getNumber() external view returns (uint){
        return number;
    }
}