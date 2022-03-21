// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;


contract MySmartContract {
    function Hello() public view returns (string memory) {
        return "Hello World";
    }
    function Greet(string memory str) public view returns (string memory) {
        return str;
    }
}

// https://towardsdev.com/creating-a-simple-ethereum-smart-contract-in-golang-138b9439f64e