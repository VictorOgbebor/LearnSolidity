pragma solidity 0.8.10;

contract PrintMyName {

    string public name = "OG";

    function sayName() public view returns (string memory) {
        return name;
    }

}