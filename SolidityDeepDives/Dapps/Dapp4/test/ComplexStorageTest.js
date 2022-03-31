const ComplexStorage = artifacts.require("ComplexStorage"); // should match solidity files

describe("ComplexStorage", () => {
  let ComplexStorageContract = null;
  before(async () => {
    ComplexStorageContract = await ComplexStorage.deployed();
  });

  it("Should Deploy Contact and get address", async () => {
    console.log(ComplexStorageContract.address);
    assert(ComplexStorageContract.address != "");
  });

  it("Should add", async () => {
    await ComplexStorageContract.add(1);
    await ComplexStorageContract.add(2);
    await ComplexStorageContract.add(3);
  });

  it("Should get", async () => {
    const id1 = await ComplexStorageContract.get(0);
    const id2 = await ComplexStorageContract.get(1);
    const id3 = await ComplexStorageContract.get(2);

    console.log(id1.toNumber(), id2.toNumber(), id3.toNumber());
  });

  it("Should getAll", async () => {
    const raw = await ComplexStorageContract.getAll();
    const ids = raw.map((id) => id.toNumber());
    assert.deepEqual(ids, [1, 2, 3]);
  });

  it("Should get the length of the ids", async () => {
    const length = await ComplexStorageContract.length();
    assert(length.toNumber() === 3);
  });
});
