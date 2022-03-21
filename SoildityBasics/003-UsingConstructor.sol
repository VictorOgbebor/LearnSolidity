// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract AdminAddress {
    
    address public admin;
    
// Give a variable when deploying contract. ONLY CALLED ONCE...
    constructor(address _admin){
        admin = _admin;
    }
}


// Do this in remix to see what i mean