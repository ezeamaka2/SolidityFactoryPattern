```// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArr;

    uint256 totalContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
        totalContracts = totalContracts + 1;
    }

    function getTotalNumberOfContracts() public view returns(uint256) {
        return totalContracts;
    }

    // Calling functions in simpleStorage from storageFactory
    function simpleStorageStore(uint256 _simpleStorageIndex, uint256 _favouriteNumber) public {
        SimpleStorage simplestoragestore = SimpleStorage(address(simpleStorageArr[_simpleStorageIndex]));
        simplestoragestore.store(_favouriteNumber);
    }

    function getSimpleStorageFnumber(uint256 _simpleStorageIndex) public view returns(uint256){
        // SimpleStorage simplestoragestore = SimpleStorage(address(simpleStorageArr[_simpleStorageIndex]));
        // return simplestoragestore.retrieve();

        return SimpleStorage(address(simpleStorageArr[_simpleStorageIndex])).retrieve();
    }

    function simpleStorageAddPerson(uint256 _index, string memory _name, uint256 _favnum) public {
        SimpleStorage simplestoragestore = SimpleStorage(address(simpleStorageArr[_index]));
        simplestoragestore.addPerson(_favnum, _name);
    }

    function retrieveFavNum (uint256 _index, string memory _name) public view returns(uint256){
        SimpleStorage simplestoragestore = SimpleStorage(address(simpleStorageArr[_index]));
        return simplestoragestore.getNameFvNum(_name);
    }
}```
