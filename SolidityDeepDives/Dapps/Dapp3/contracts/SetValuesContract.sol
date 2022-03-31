pragma solidity 0.8.10;

contract SetValues {

    string name;
    uint age;
    uint[] ids;

    function setName(string memory _name) external  {
        name = _name;
    }

    function getName() external view returns (string memory) {
        return name;
    }

    function setAge(uint _age) external  {
        age = _age;
    }

    function getAge() external view returns (uint) {
        return age;
    }

}