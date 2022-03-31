// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract ControlRoom {
// owner = deployer
// token owner = who own token
// bankOwner = owner || bankContract == address(this)

    address public owner;
    address internal bank;

    modifier ForOwners  {
        require(owner == msg.sender, "Not Permitted");
        _;
    }

    modifier ForBank  {
        require(owner == msg.sender || bank == address(this), "Not Permitted");
        _;
    }
    
    constructor() {
        owner = msg.sender;

    }

}

contract erc20 is ControlRoom {

    /*
    Functions:
        totalSupply() public view returns (uint256);
        balanceOf(address tokenOwner) public view returns (uint);
        allowance(address tokenOwner, address spender)
        transfer(address to, uint tokens) public returns (bool);
        approve(address spender, uint tokens)  public returns (bool);
        transferFrom(address from, address to, uint tokens) public returns (bool);

    Events:
        Approval(address indexed tokenOwner, address indexed spender, uint tokens);
        Transfer(address indexed from, address indexed to, uint tokens);
    */

    mapping (address => uint256) public balances; // Hold token balance 
    mapping (address => mapping(address => uint256)) public allowed2Spend; // Will show all the addresses ths can with withdraw

    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    event Transfer(address indexed to, uint tokens);
    event TransferFrom(address indexed from, address indexed to, uint tokens);

    uint256 initialSupply = 1500;

    function totalSupply() public view returns (uint256 TotalSupply) {
        TotalSupply = initialSupply;
        return TotalSupply;
    }

    function addTokenSupply() public ForOwners {
        initialSupply++;
    }

    function subTokenSupply() public ForOwners {
        initialSupply--;
    }

    function balanceOf(address tokenOwner) public view returns (uint) {
       return balances[tokenOwner];
    }

    function transfer(address to, uint sendAmount) public returns (bool) {
        if(balances[msg.sender] >= sendAmount) {
            balances[msg.sender] -= sendAmount;
            balances[to] += sendAmount;

        emit Transfer(to, sendAmount);
            return true;
        } 
        else {
            return false;
        }
    }
    // Check if address is allowed
    // to spend on the owner's behalf
    
    function allowance(address tokenOwner, address spender) external view returns (uint256) {
        return allowed2Spend[tokenOwner][spender];
    }

    function approve(address _spender, uint256 _amount)  public returns (bool) {
        allowed2Spend[msg.sender][_spender] = _amount;

        emit Approval(msg.sender, _spender, _amount);
        return true;
    }

    function transferFrom(address from, address to, uint sendAmount) public returns (bool) {
        if(balances[from] >= sendAmount && allowed2Spend[from][msg.sender] >= sendAmount && sendAmount >0 && balances[to] + sendAmount >  balances[to])
        {
            balances[from] -= sendAmount;
            balances[to] + sendAmount;

            emit TransferFrom(from, to, sendAmount);
            return true;
        }

        else {
            return false;    
        }
    }

}