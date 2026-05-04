// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Arrays{

    uint[] numbers;

    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    function editNumberAtIndex(uint _newNumber, uint _index) public {
        numbers[_index] = _newNumber;
    }

    function deleteNumberAtindex(uint _index) public {
        delete numbers[_index]; // delete an element in the array
    }

    function getNumberAtIndex(uint _index) public view returns(uint) {
        return numbers[_index];
    }

    function doubleArrayValues() public view returns(uint[] memory) {
        uint length = numbers.length;
        uint[] memory _doubledArray = new uint[](length);
        for (uint i = 0; i < length; i++) 
        {
            uint _value = numbers[i] * 2;
            _doubledArray[i] = _value;
        }

        return _doubledArray;
    }
}