// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract variables {
    string text = "Hell world";

    function hello() public view returns (string memory){
        return text;
    }

    function blockInfo() public view returns(uint) {
        return block.timestamp;
    }
}