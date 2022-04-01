const BankTeller = artifacts.require("BankTeller"); // should match solidity files

describe("BankTeller", () =>
{
    let BankTellerContract = null
    before(async () =>
    {
        BankTellerContract = await BankTeller.deployed();
    })

    
    it("Should Deploy Contact and get address || owner", async () =>
    {
        owner = await BankTellerContract.owner()
        console.log(owner, "Contract Owner")
        
        console.log(BankTellerContract.address, "Contract Address");
        assert(BankTeller.address != "");
    })

    it("Should use getBankAddress()", async () =>
    {
        bankAddress = await BankTellerContract.getBankAddress()
        console.log(bankAddress, "Contract Address from getBankAddress()");

    })

    it("Should use getContactTokenBalance())", async () =>
    {
        bankBalance = await BankTellerContract.getContactTokenBalance()
        assert(bankBalance.toNumber() === 1500);
        console.log(`${bankBalance.toNumber()} "Contract Token from getContactTokenBalance()"`);

        bankEtherBalance = await BankTellerContract.getContactEtherBalance()
        // assert(bankBalance.toNumber() === 1500);
        console.log(`${bankEtherBalance.toNumber()} "Contract Token from getContactEtherBalance()"`);


    })

    it("Should use to add and sub tokens)", async () =>
    {

        // call as owner
        bankBalance = await BankTellerContract.getContactTokenBalance()
        assert(bankBalance.toNumber() === 1500);
        console.log(`${bankBalance.toNumber()} "TokenBalance Start"`);

        await BankTellerContract.createToken()
        assert(bankBalance.toNumber() === 1501);
        console.log(`${bankBalance.toNumber()} "TokenBalance after create"`);

        await BankTellerContract.burnToken()
        assert(bankBalance.toNumber() === 1500);
        console.log(`${bankBalance.toNumber()} "TokenBalance after burn"`);



    })
})