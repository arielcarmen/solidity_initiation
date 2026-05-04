// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract StudentManagement {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    struct Grade {
        string subject;
        uint value;
    }

    struct Student{
        string name;
        uint numberOfGrades;
        mapping (uint => Grade) grades;
    }

    mapping (address => Student) students;

    function addStudent(address _studentAddress, string memory _name) public {
        require(msg.sender == owner, "Owner required");
        bytes memory _nameOnAddress = bytes(students[_studentAddress].name);
        require(_nameOnAddress.length == 0, "This student already exists");
        students[_studentAddress].name = _name;
    }

    function addMark(address _studentAddress, string memory _subject, uint _value) public {
        require(msg.sender == owner, "Owner required");
        bytes memory _nameOnAddress = bytes(students[_studentAddress].name);
        require(_nameOnAddress.length > 0, "This student is not registered");
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].subject = _subject;
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].value = _value;
        students[_studentAddress].numberOfGrades += 1;
    }

    function showMarks(address _studentAddress) public view returns (uint[] memory){
        require(msg.sender == owner, "Owner required");
        bytes memory _nameOnAddress = bytes(students[_studentAddress].name);
        require(_nameOnAddress.length > 0, "This student is not registered");
        uint[] memory _grades = new uint[](students[_studentAddress].numberOfGrades);

        for (uint i = 0; i < students[_studentAddress].numberOfGrades; i++) 
        {
            _grades[i] = students[_studentAddress].grades[i].value;
        }

        return _grades;
    }

    function mean(address _studentAddress) public view returns (uint){
        require(msg.sender == owner, "Owner required");
        bytes memory _nameOnAddress = bytes(students[_studentAddress].name);
        require(_nameOnAddress.length > 0, "This student is not registered");
        uint _total = 0;

        for (uint i = 0; i < students[_studentAddress].numberOfGrades; i++) 
        {
            _total += students[_studentAddress].grades[i].value;
        }

        return _total/students[_studentAddress].numberOfGrades;
    }
}