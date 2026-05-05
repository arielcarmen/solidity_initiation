// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract datas {

    // all variables declared out of a function is in storage type 
    // a variable inside a function can be associated to a memory variable by using storage

    // for an external function, as parameter, calldata is used for mappings, arrays and structs
    uint public number;

    function getNumber() public view returns(uint){
        return number;
    }

    function setNumber(uint _number) public {
        number = _number;
    }

    function setNumberFromOutside(uint[] calldata _number) external  {
        number = _number[0];
    }
}