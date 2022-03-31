// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract whoOwnsThisContract {

    /*

        create functions that
            1) set the contract owner to deployer to be the address. 
            2) check owner balance.
            3) change the owner


    */

    address public ownerOfThisContract;

    function getContractOwner() external view returns(address) {
        return ownerOfThisContract;
    }

    function checkContractOwnerBalance() external view returns(uint) {
        return ownerOfThisContract.balance;
    }

    function setContractOwner() external {
        ownerOfThisContract = msg.sender;
    }

    function changeContractOwner(address newOwner) external {
        ownerOfThisContract = newOwner;
    }

}