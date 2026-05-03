// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract types{

    uint nombre;
    bool booleen;
    address ariel;
    string phrase;

    function getNombre() public view returns(uint){
        return nombre;
    }

    function getphrase() public view returns(string memory){
        return phrase;
    }

    function getAddress() public view returns (address){
        return ariel;
    }

    function getBool() public view returns(bool){
        return booleen;
    }

    function setNombre(uint _nombre) public{
        nombre = _nombre;
    }

    function setBool(bool _booleen) public{
        booleen = _booleen;
    }

    function setAddress(address _ariel) public{
        ariel = _ariel;
    }

    function setPhrase(string memory _phrase) public{
        phrase = _phrase;
    }
}