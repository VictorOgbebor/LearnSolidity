// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

// https://docs.soliditylang.org/en/latest/types.html

contract TypesInSolidity {

    bool public booleanType = true; // True or False statement ..Similar operators like in Go or JS
/*
    ! (logical negation)
    && (logical conjunction, “and”)
    || (logical disjunction, “or”)
    == (equality)
    != (inequality)
*/


    // Integer
/*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
*/
    int8 public Integer8 = -1;
    int128 public Integer128 = -127;
    int256 public Integer256 = 256;

    // Unsigned Integer
/*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
*/
    uint8 public UInteger8 = 1;
    uint128 public UInteger128 = 127;
    uint256 public UInteger256 = 256;

    // minimum and maximum of int 
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

/*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
*/

    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]


    address public someAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Zero Value = Default addres that can be change if in called in function
    bool public ZeroBool; // false
    uint public ZeroUint; // 0
    int public ZeroInt; // 0
    address public ZeroAddress; // 0x0000000000000000000000000000000000000000

    mapping(address => string) playerName; // This is similar to hash map or key value pair
    mapping(address => uint) playerPoints;


// Struct is a collection of Data types
    struct PlayerStats {
        string name;
        uint number;
        uint[] WinCount; // This is an array...has to be of the same type
        uint[] LoseCount;
    }
// Best used to give options
    enum PlayerMovements {
        SHOOT,
        PASS,
        DRIBBLE,
        RUN_FORWARD,
        RUN_BACKWARD,
        SLIDE_LEFT,
        SLIDE_RIGHT
    }

    // Builtin Variables in solidity => https://docs.soliditylang.org/en/v0.6.4/units-and-global-variables.html#block-and-transaction-properties
    address SENDER = msg.sender; // Usually the depolyer or sender of funds
    uint time = block.timestamp; // Show the current block time
    uint amount = msg.value; // the value that will be sent => ether usually

}

