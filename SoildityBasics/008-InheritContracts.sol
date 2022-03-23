// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;


contract contractA {

   /*
    What happens whe wrrors come
        throw 
        revert()
        require()
        assert()
        error keyWord
    */

    function errors() external {
        //
        //
        //
        // 
    }

}

contract contractB is contractA {

}

contract contractC is contractA, contractB {
    
}

