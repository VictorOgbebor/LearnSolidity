// SPDX-License-Identifier: BlockchainBic
pragma solidity ^0.8.10;

contract ArrayData {
// array => a list o similar types (list of strings or uint)
    // 1) Stored Arrays => saved on the smart contract
    // 2) memory Array => tempory storage in SC
    // 3) array arguments and return arrays from function

    uint[] numberArray;
    bool[] myBoolArrays;
    string[] stringArray;

    /*
        Approach w/ CRUD to edit an array list (CREATE || READ || UPDATE || DELETE)

     */

    function addSomethingToArray() external {
        
        // 1)
        // add to array list
        stringArray.push("Yo");
        stringArray.push("Yo, yo");
        stringArray.push("Yo, yo, yo");

        numberArray.push(1);
        numberArray.push(2);
        numberArray.push(3);

        // Read array list => Make sure yu reference the index(positon of item) you want to view
        stringArray[0];
        stringArray[1];
        stringArray[2];

        // update 
        stringArray[0] = "Yo, yo, yo, yo";
        stringArray[0];
    // iterate the array with a for loop
    }

    // 2) Memory Arrays

    // 3) Arrays in Functions


}

contract StructsData {
// struct => collection of diferent types to  create a custom type

// 2)  (CREATE || READ || UPDATE || DELETE)
    // Read
    // Update
    // Delete

// 3) Struct Arrays

}


contract MappingData {

// 1) mappings => Like a keyValue pair or OBJECT methods in JS/GO

// 2)  (CREATE || READ || UPDATE || DELETE)
    // Read
    // Update
    // Delete

// 3) Defualts values

// 4) Double Mappings => Nested
// 5) Add arrays to mapping
// 6) Add Struct to mapping


}



contract GroupingData is ArrayData, StructsData, MappingData {
}