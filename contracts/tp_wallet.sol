// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract wallet_demo {

    struct wallet {
        uint balance;
        uint transactionCount;
    }

    mapping(address => wallet) Wallets;

    function getBalance() public view returns (uint){
        return Wallets[msg.sender].balance;
    }

    function getContractBalance() public view returns (uint){
        return address(this).balance; // this line returns the balance on the contract
    }

    function withdrawAllMoney(address payable _to) public{
        uint _amount = Wallets[msg.sender].balance;
        Wallets[msg.sender].balance = 0;
        _to.transfer(_amount); // sends the money to the "_to" address
    }

    receive() external payable {
        Wallets[msg.sender].balance += msg.value;
        Wallets[msg.sender].transactionCount += 1;
    }
}