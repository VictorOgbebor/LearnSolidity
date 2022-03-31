const OGSmartContract = artifacts.require("OGSmartContract"); // should match solidity files

describe("OGSmartContract", () =>
{
    let ogsimpleContract = null
    before(async () =>
    {
        ogsimpleContract = await OGSmartContract.deployed();
    })

    
    it("Should Deploy Contact and get address", async () =>
    {
        console.log(ogsimpleContract.address);
        assert(ogsimpleContract.address != "");
    })
})