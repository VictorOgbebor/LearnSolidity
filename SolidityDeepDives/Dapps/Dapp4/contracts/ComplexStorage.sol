pragma solidity 0.8.10;

contract ComplexStorage {
    uint[] ids;

    function add(uint id) external {
        ids.push(id);
    }

    function get(uint spot) external view returns (uint){
        return ids[spot];
    }

    function getAll() external view returns (uint [] memory){
        return ids;
    }

    function length() external view returns (uint){
        return ids.length;
    }
}