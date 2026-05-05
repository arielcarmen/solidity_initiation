// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract events {
     
    // store events in event cost less than in memory

    uint[] numbers;

    event numberAdded(address _by, uint _number);

    function addNumber(uint _number) external {
        numbers.push(_number);
        emit numberAdded(msg.sender, _number);
    }
}