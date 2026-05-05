// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "contracts/C1.sol";

contract C2 {
    address contractAddress;

    function setAddress(address _address) external {
        contractAddress = _address;
    }

    function callGetNumber() external view returns (uint) {
        interface1 _i = interface1(contractAddress);
        return _i.getNumber();
    }

    function callSetNumber(uint _number) external {
        interface1 _i = interface1(contractAddress);
        _i.setNumber(_number);
    }
}