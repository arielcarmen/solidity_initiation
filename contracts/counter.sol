// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Counter{
    uint counter;

    function increment() public {
        counter ++;
    }

    function getCount() public view returns (uint){
        return counter;
    }

}