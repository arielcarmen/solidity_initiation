// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Source {
    Contract[] contracts;

    function createNewContract(uint _number) external returns (address){
        Contract c = new Contract(_number);
        return address(c);
    }

    function getContractNumber(Contract _c) external view returns (uint){
        return _c.getNumber();
    }

    function setContractNumber(Contract _c, uint _number) external {
        _c.setNumber(_number);
    }
}

contract Contract{

    uint number;

    constructor(uint _number) {
        number = _number;
    }

    function getNumber() external view returns (uint){
        return number;
    }

    function setNumber(uint _number) external {
        number = _number;
    }
}