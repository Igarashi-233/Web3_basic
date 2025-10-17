// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract HelloWorld {
    string private message;

    event MessageChanged(address indexed user, string newMessage);

    constructor(string memory _msg) {
        message = _msg;
    }

    function getMessage() external view returns (string memory) {
        return message;
    }

    function setMessage(string calldata _msg) external {
        message = _msg;
        emit MessageChanged(msg.sender, _msg);
    }
}
