// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
    uint256 favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieval() public view returns(uint256) {
        return favouriteNumber;
    }

    mapping(string=>uint256) public nameToFavouriteNumber;

    //uint256[] numbersArray; //number array
    People[] public people;

    struct People {
        string name;
        uint256 favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_name, _favouriteNumber)); //one liner (don't even need to use memory keyword)
        // People memory newPerson = People({name: _name, favouriteNumber:_favouriteNumber});
        // people.push(newPerson);
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}

// deployed in the below environment
// Injected Provider - Metamask
// Sepolia test network
// url https://sepolia.etherscan.io/tx/0x20ec6031f0812029a2bdede9948d57915f96a89ab9155dbfb6cdf479e4653878