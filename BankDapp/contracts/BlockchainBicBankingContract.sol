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

contract Bank is ControlRoom {

mapping (address => uint) public tokenBalance;


    modifier tokenOwner {
        require(tokenBalance[msg.sender] > 0, "No Tokens here");
        _;
    }

    uint tokenPrice = 1 ether;

    event tokenPurchased(address where, address indexed recipient, uint indexed amountGiven, uint indexed tokenSent);
    event tokenSent(address sender, address indexed recipient, uint indexed amount);
    event tokenIncrease(uint increase);
    event tokenDecrease(uint decrease);

// contructor
    // give ownership to owner...
    constructor() {
        bank = address(this);
        tokenBalance[bank] = 1500;

    }
        
    function getBankAddress() external view returns (address) {
        return bank;  
    }

    function getContactTokenBalance() external view returns (uint) {
        return tokenBalance[address(this)];
         
    }
    function getContactEtherBalance() external view returns (uint) {
        return address(this).balance;
         
    }

    function getEtherBalance(address search) external view returns (uint) {
        return search.balance;
         
    }

    function getTokenBalance() external view returns (uint) {
        return tokenBalance[msg.sender];
    }

        // create token || owner
    function createToken() external ForOwners {
        require(msg.sender == owner, "Not Allowed access");
        tokenBalance[bank]++;
        emit tokenIncrease(tokenBalance[bank]++);
    }
    // burn tokens || owner
    function burnToken() external  ForOwners {
        require(msg.sender == owner, "Not Allowed access");
        tokenBalance[bank]--;
        emit tokenDecrease(tokenBalance[bank]);
    }

    // buy tokens || anyone
    function purchaseToken() external payable returns (bool success){
        require(tokenBalance[bank] * tokenPrice / msg.value > 0, "Not enough Tokens");
            uint askValue = msg.value / tokenPrice;

            tokenBalance[bank] -= askValue;
            tokenBalance[msg.sender] += askValue;
            emit tokenPurchased(address(this), msg.sender, msg.value, tokenPrice);
            return true;

    }
    // send tokens || token holder
    function sendTokens(address payable to, uint amount) external tokenOwner {
        require(tokenBalance[msg.sender] >= amount, "Not Enough tokens");
        assert(tokenBalance[to] + amount >= tokenBalance[to]);
        assert(tokenBalance[msg.sender] - amount <= tokenBalance[msg.sender]);

        tokenBalance[msg.sender] -= amount;
        tokenBalance[to] += amount;

        emit tokenSent(msg.sender, to, amount);
    }

// Owner will have still have ownership of contract...just wont hold token supply

}

contract BankTeller is Bank {

    function getRewardBalance() external view returns(uint) { 
        // will show what has been sent to contract
        return bank.balance;
    }

    function claimReward(address payable to) external ForOwners { 
        // Withdraws all fund to address (only owner or allowed address)
        uint balanceToSend = bank.balance;
        to.transfer(balanceToSend);
    }

}