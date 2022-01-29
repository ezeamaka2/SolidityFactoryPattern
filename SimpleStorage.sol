```// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 favoriteNumber;
    bool favoriteBool;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint) nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favoriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favouriteNumber, string memory _name) public {
        people.push(People(_favouriteNumber, _name));
    }

    function getNameFvNum(string memory _name) public view returns (uint256){
        return nameToFavouriteNumber[_name];
    }

}```
