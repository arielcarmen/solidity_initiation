// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
import "contracts/Owner.sol";

contract AppartementManagement is Owner{
    uint goodCount;
    
    enum goodTypes {appartment, house, residence}

    struct good{
        uint id;
        string name;
        uint price;
        AppartementManagement.goodTypes goodType;
    }

    mapping (address => good[]) Owners;

    function addGood(address _ownerAddress, string memory _name, goodTypes _type, uint _price) public isOwner {
        require(_price > 1000, "The price must be graeter than 1000 wei");
        require(uint(_type) >= 0, "The type must be 0, 1 or 2");
        require(uint(_type) < 3, "The type must be 0, 1 or 2");
        Owners[_ownerAddress].push(good(goodCount, _name, _price, _type));
        goodCount ++;
    }

    function getOwnerGoods(address _owner) public view isOwner returns (good[] memory){
        return Owners[_owner];
    }

    function getOwnerGoodsCount(address _owner) public view isOwner returns (uint){
        return Owners[_owner].length;
    }

    function getMyGoods(address _owner) public view returns (good[] memory){
        require(msg.sender == _owner, "Not the owner");
        return Owners[_owner];
    }
}