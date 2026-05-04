// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ClassroomManagent {

    struct student{
        string name;
        uint[] marks;
    }

    mapping (address => student) Classroom;

    function getStudentName(address _studentAddress) public view returns (string memory) {
        return Classroom[_studentAddress].name;
    }

    function setStudentName(address _studentAddress, string memory _name) public {
        Classroom[_studentAddress].name = _name;
    }

    function addMark(address _studentAddress, uint _mark) public {
        Classroom[_studentAddress].marks.push(_mark);
    }

    function mean(address _studentAddress) public view returns(uint){
        uint length = Classroom[_studentAddress].marks.length;
        uint total = 0;
        for (uint i = 0; i < length; i++) 
        {
            total += Classroom[_studentAddress].marks[i];
        }
        
        return total/length;
    }

}