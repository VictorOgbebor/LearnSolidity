// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;


contract ErrorsAndEvents {

   /*
    What happens whe errors come
        throw 
        revert()
        require()
        assert()
        error keyWord
    */

    event NewPlayer (address playerAdded, uint playerNumber); // Events are used to log data and track the contract balances(or related)

    function errors() external {
        // We create errors that send messages
        // errors that warn us
        // errors that will stop the process
    }

    function newAddedPlayer(address player, uint number) external {
        emit NewPlayer(player, number); 
    }

}
// https://github.com/ethereumbook/ethereumbook/blob/develop/07smart-contracts-solidity.asciidoc#error-handling-assert-require-revert

// https://github.com/ethereumbook/ethereumbook/blob/develop/07smart-contracts-solidity.asciidoc#events



