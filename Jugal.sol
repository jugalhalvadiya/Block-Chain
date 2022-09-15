//SPDX-License_Identifier: MIT
pragma solidity ^0.6.0;
 
contract Jugal {
    
 
    uint256 public favoriteNumber;
    bool favoriteBool;
 
    struct People{
        uint favoriteNumber;
        string name;
    }
 
    // People[] public person;
    mapping(string => uint256) public nameToFavoriteNumber;
 
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
 
    function retrieve() public view returns(uint256)
    {
        return favoriteNumber;
    }
 
    People[] public people;
    function addperson(string memory _name , uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}
 