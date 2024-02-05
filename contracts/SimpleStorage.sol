// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieval() public view returns(uint256) {
        return favouriteNumber;
    }

    //uint256[] numbersArray; //number array
    People[] public people;

    struct People {
        string name;
        uint256 favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        //people.push(People(_name, _favouriteNumber)); //one liner (don't even need to use memory keyword)
        People memory newPerson = People({name: _name, favouriteNumber:_favouriteNumber});
        people.push(newPerson);
    }
}