const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("HelloWorldModule", (m) => {
    // 部署合约时传入构造函数参数
    const hello = m.contract("HelloWorld", ["Hello, Orion!"]);

    return {hello};
});