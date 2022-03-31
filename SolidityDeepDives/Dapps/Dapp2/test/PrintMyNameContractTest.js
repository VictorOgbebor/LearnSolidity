const PrintMyName = artifacts.require("PrintMyName"); // should match solidity files

describe("PrintMyName", () =>
{
    it("Should Print Name using function", async () =>
    {
        const printMyname = await PrintMyName.deployed();
        const result = await printMyname.sayName()
        console.log(result);
    }) 
})