const contractABI = []
const contractAddress = "0xb16f52B02B7386Dc302412806ab4D0F0356e346F" // get when Deployed
import Web3 from "web3";

const web3 = new Web3("http://localhost:8545");
const OGSmartContract = new web3.eth.Contract(contractABI, contractAddress);

console.log(OGSmartContract)
web3.eth.getAccounts()
    .then(console.log);