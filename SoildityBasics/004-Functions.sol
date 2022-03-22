// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract FunctionsInSolidlity {

// ETB section 8 - 10
// https://docs.soliditylang.org/en/v0.8.13/contracts.html#visibility-and-getters

    uint public valueA;
    bool private valueB;
    string public valueC;
    int internal valueD;

    address public owner;


    modifier iOwnThis { 
        require(msg.sender == owner);
        _;
    }


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
    function returnFunc3() view external iOwnThis returns (string memory) { 
        return valueC;
    }

    function _setFunc4(int _valueD) internal { 
        valueD = _valueD - 2;
    }

    function _returnFunc4() view internal returns (int) { 
        return valueD;
    }

    
/*
    Explaining Functions in depth 

    function FunctionName([parameters]) {public|private|internal|external}
        [pure|view|payable] [modifiers] [returns (return types)]

        FunctionName = Name of the functuoin that will be called from another contract
        parameters = arguments that are passed to the functions
            (type nameOfParms)

    * KEYWORDS USED  for visablity

    - public: Function is available by default and xan be called all over|| Variable ...
    - private: Function can only called inside the contract...no where else || Variable ...
    - external: Function is similar to a public function, just cannot be called with in the contract
    - internal: Function is similar to private...function can be called within the contract...o where elses || Variable ...

    - view:
    - pure:
    - payable: A payable function is one that can accept incoming payments...Usually depositFunctions
    
    - returns (return Type): return type = (bool/string/uint/int)
    - return: the variable that matches the return type

    - payable: 

    - function modifier => this sets a function to have certain contions met to execute. Basically makes the function Special 
        - allow us to write preconditions for functions and apply them consistently
        - making the code easier to read and make easier to audit for security
        - most often used for access control ... can have multi purposes

 */
    

}
