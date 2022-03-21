// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract FunctionsInSolidlity {

// ETB section 8 - 10
// https://docs.soliditylang.org/en/v0.8.13/contracts.html#visibility-and-getters

    uint public valueA;
    bool private valueB;
    string public valueC;
    int internal valueD;


    function setFunc1(uint _valueA) public { // This is considered a setter function...similar to a constructor
        valueA = _valueA;
    }
    function returnFunc1() view public returns (uint) { // This is considered a getter function ... return the value || or like a GET using APIs
        return valueA;
    }

    function _setFunc2(bool _valueB) private { 
        valueB = _valueB;
    }
    function _returnFunc2() view private returns (bool) { 
        return valueB;
    }

    function setFunc3(string memory _valueC) external { 
        valueC = _valueC;
    }
    function returnFunc3() view external returns (string memory) { 
        return valueC;
    }

    function _setFunc4(int _valueD) internal { 
        valueD = _valueD;
    }

    function _returnFunc4() view internal returns (uint) { 
        return valueA;
    }

    
/*
    * KEYWORDS USED 

    - public: Function is able to be called by anywhere
    - view: 
    - returns (return Type): return type = (bool/string/uint/int)
    - return: the variable that matches the return type

    - payable: 
    - external: 
 */
    

}
