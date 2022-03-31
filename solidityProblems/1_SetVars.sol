// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract settingVars {

    uint public Uint1;

    bool public setTrue;

    string public name;

    function setUintTo(uint _uint1) external {
        Uint1 = _uint1;
    }

    function setTrueTo() external {
        setTrue = true;
    }

    function setName(string memory _name) external {
        name = _name;
    }

    /**
    
    Create variables and assign them throu functions */
}