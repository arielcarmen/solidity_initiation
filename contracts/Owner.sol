// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Owner {
    address owner;
    uint number;
    bool paused;

    constructor() {
        owner = msg.sender;
    }

    function pauseOrLaunch() public {
        require(msg.sender == owner, "Owner required");
        paused = !paused;
    }

    function setNumber(uint _number) public {
        require(paused, "Contract is paused !");
        require(msg.sender == owner, "Owner required");
        number = _number;
    }

    function getNumber() public view returns (uint) {
        require(paused, "Contract is paused !");
        return number;
    }

    function destroy(address payable _to) external {
        uint _amount = address(this).balance;
        _to.transfer(_amount);
    }
}