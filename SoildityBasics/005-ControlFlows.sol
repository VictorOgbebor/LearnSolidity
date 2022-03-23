// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;


contract ControlFlows {

    bool trueStatement = true;

    function controlFlows() external view {
        if (! trueStatement) {
            // do this
        } else {
            // do this instead
            
        }

    }

    function ForLoopFlow() external pure {
            for (uint256 i = 0; i < 20; i++) {
            
            }
    
    }

    function WhileLoopFlow() external view {
        while(trueStatement) {
            
            // Run some test or loop
            if (trueStatement == false) {
                // do something here
                break; // this will break the code
            } else {
                continue; // else it will continue the code
            }
        }
    
    }
}

