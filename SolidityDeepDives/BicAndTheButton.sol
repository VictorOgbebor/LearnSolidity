pragma solidity 0.8.10;

contract ButtonGame {

    address payable winner;
    address owner;
    uint public gameEndTime = block.timestamp + 3;

    // Current State
    address lastButtonHitter;
    uint lastDeposit = msg.value / tokenPrice;

    bool ended = false;
    uint tokenPrice = 1 ether;
    mapping (address => uint) public buttonDeposit;

    event lastButtonSmash(address Smasher, uint time);
    event ButtonWinner(address WinningSmasher, uint amount, uint time);
    
    modifier ownerOnly() {
        require(msg.sender == owner, "Not Winner");
        _;
    }
    modifier winnerOnly() {
        // require time to end
        require(winner == lastButtonHitter, "Not Winner");
        _;
    }

    function getLastDepositAddress() external view returns (address) {
        return lastButtonHitter;
    }

    function getPrizeBalance() external view returns (uint) {
        return address(this).balance;
    }

    function theButton() external payable {
        // // when depoit start timer
        // if(block.timestamp > gameEndTime) {
        //     revert("NO Its over");
        // }

        if (lastDeposit != 0) {
            buttonDeposit[lastButtonHitter] += lastDeposit;
        }

        lastButtonHitter = msg.sender;
        emit lastButtonSmash(msg.sender, block.timestamp);
    }

    function endTime() external {

    }

    // withdraw function that will only withdraw to last depositer
    function claimTreasure(uint amount) external winnerOnly ownerOnly {
        require(msg.sender == winner, "not the winner");
        amount = address(this).balance;
        winner.transfer(amount);
    }

    //* Build in Progress *
}