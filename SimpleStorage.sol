// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // solidity version

contract SimpleStorage {

    uint256 MyNumberOnly; // bernilai 0

    // uint 256 person favorite number
    struct Person {
        uint256 MyNumber;
        string name;
    }

    // // dynamic array
    Person[] public listOfPeople; // [] KOSONG

    mapping (string => uint256) public nameToMyNumberOnly;

    function store(uint256 _MyNumber) public {
        MyNumberOnly = _MyNumber;
    }

    // view,pure.
    function retrieve () public view returns(uint256) {
    return MyNumberOnly;
    }

    function addPerson(string memory _name , uint256 _MyNumber) public {
    listOfPeople.push(Person(_MyNumber, _name));
    nameToMyNumberOnly [_name] = _MyNumber;
}
}
