// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract visibility {
    uint public number;
    // a variable with this visibility specified will automatically have a getter with the same name in deployed contracts area

    function getNumber() public view returns(uint) {
        return number;
    }

    function _setNumber(uint _number) private {
        number = _number;
    }

    function _doubleNumber(uint _number) internal {
        // this visibility restricts the function to main contract and childs
        number = _number * 2;
    }

    function tripleNumber(uint _number) external {
        // external visibility restricts the function to all but not main contract
        number = _number * 3;
    }
}

contract child is visibility {
    
    function doSomething() public returns (uint){
        super._doubleNumber(8);
        return number;
    }
}