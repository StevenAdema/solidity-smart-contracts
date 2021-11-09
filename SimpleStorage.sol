

pragma solidity ^0.6.0;

contract SimpleStorage {
 
    uint256 favNumber;
 
    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
        uint256 test = 4;
    }   
    
    function retrieve() public view returns(uint256) {
        return favNumber;
    }
}