const contractABI = [
    {
      "inputs": [],
      "name": "name",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "stateMutability": "view",
      "type": "function",
      "constant": true
    },
    {
      "inputs": [],
      "name": "sayName",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "stateMutability": "view",
      "type": "function",
      "constant": true
    }
  ]
const contractAddress = "0xB61Cb530aD6461073d8f23CE1055B691AE9Ca9C7" // get when Deployed
const Web3 = require("../node_modules/web3");

const web3 = new Web3("http://localhost:8545");
const PrintMyName = new web3.eth.Contract(contractABI, contractAddress);

console.log(PrintMyName)

document.addEventListener('DOMContentLoaded', () =>
{
PrintMyName.methods.sayName().call()
    .then(result =>
    {
    document.getElementById("sayName").innerHTML = result
})
    
})
