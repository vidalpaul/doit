const ToDo = artifacts.require("ToDo");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("ToDo", function (/* accounts */) {
  it("should assert true", async function () {
    await ToDo.deployed();
    return assert.isTrue(true);
  });
});
