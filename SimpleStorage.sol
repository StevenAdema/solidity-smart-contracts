// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
 
    uint256 favNumber;
    bool favBool;
    bool favBool2;
 
    struct People {
        uint256 favNumber;
        string name;
    }
   
    People[] public people;
    mapping(string => uint256) public nameToFavNumber;
   
    People public person = People({favNumber:2, name:'Steven'});
   
    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }  
   
    function retrieve() public view returns(uint256) {
        return favNumber;
    }
   
    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People({favNumber: _favNumber, name: _name}));
        nameToFavNumber[_name] = _favNumber;
    }

}