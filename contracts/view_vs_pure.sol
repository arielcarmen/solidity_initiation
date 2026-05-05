// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ViewVsPure {
    
    uint number;

    function getNumber() public view returns (uint){
        // view focuses on reading a value from blockchain 
        return number;
    }

    function double(uint _numberToDouble) public pure returns (uint){
        // pure is about using no value from blockchain
        return _numberToDouble * 2;
    }

    // for view and pure, solidity uses eth_call api
    // else, if there is data modification, it uses eth_sendTransaction
}