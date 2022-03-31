const SetValuesContract = artifacts.require("SetValues"); // should match solidity files

describe("SetValuesSmartContract", () =>
{
/////////////////////////////////////////////////
    it("Should Deploy Contact and get address", async () =>
    {
        const setvaluesContract = await SetValuesContract.deployed();

        console.log(setvaluesContract.address);
        assert(SetValuesContract.address != "");
    })
/////////////////////////////////////////////////
    it("Should Set the Name", async () =>
    {
        const setvaluesSetName = await SetValuesContract.deployed();
        await setvaluesSetName.setName("Parky");

        const getvaluesSetName = await setvaluesSetName.getName();
        assert(getvaluesSetName === "Parky");
        console.log(getvaluesSetName);

    })
/////////////////////////////////////////////////
    it("Should Set the age", async () =>
    {   
        const set_age = await SetValuesContract.deployed();
        await set_age.setAge(25);

        const get_age = await set_age.getAge();
       //  assert(get_age === 25);
        console.log(get_age.toNumber());
    })
    
})