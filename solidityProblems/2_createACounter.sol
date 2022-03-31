// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract createACounter {

    uint8 public countThis;

    function countUP() external {
        countThis++;
    }

    function countDown() external {
        countThis--;
    }

    /*
        create a smartContract that counts up and down based on a function
    */
}