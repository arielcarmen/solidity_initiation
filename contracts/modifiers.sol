// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
import "contracts/Owner.sol";

contract Modifiers is Owner{
    
    uint counter;

    modifier isOwner(){
        require(msg.sender == owner, "Owner required");
        _;
    }

    function count() public isOwner {
        counter ++;
    }

    function showCount() public view returns (uint){
        return counter;
    }
}