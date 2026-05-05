// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

// In this exemple, OpenZeppelin is the main source of libs
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Strings.sol

import '@openzeppelin/contracts/utils/Strings.sol';


contract libraries {
    
    function concatenate(string memory _str, uint _number) external pure returns(string memory){

        string memory _res = string(abi.encodePacked(_str, Strings.toString(_number)));
        return _res;
    }
}