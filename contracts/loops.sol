// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract LoopsAndConditions {
    
    function fibo(uint _term) public view returns (uint){
        if (_term == 0) {
            return 0;
        } else if (_term <= 2) {
            return 1;
        } else {
            return fibo(_term -1) + fibo(_term-2);
        }
    }

    function sum(uint _counter) public pure returns(uint){
        uint _sum;
        while (_counter > 0) 
        {
            _sum += _counter;
            _counter -= 1;
        }
        return _sum;
    }
}