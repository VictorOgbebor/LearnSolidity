// SPDX-License-Identifier: MIT
pragma solidity 0.8.10; // The solidity compiler version

contract StandardSolidity {

    uint public added; // Global variable that is able to be used all over...
    // also a "public" keyword makes variables accessible from other contracts

    // This is what we call a setter function...enter Parms and set them to something
    function addSum(uint a, uint b) public { 
        added = a + b;
    }

    // This is what we call a getter function...returns the value of the return statement
    function getSum() view public returns (uint) {
        return added;
    }

}