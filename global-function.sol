//Write a smart contract that uses global functions in the message context
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageContextContract {
    address public owner;
    uint256 public contractBalance;

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Function to receive and store ether
    function receiveEther() external payable {
        // Update the contract balance
        contractBalance += msg.value;
    }

    // Function to get the sender of the current transaction
    function getSender() external view returns (address) {
        return msg.sender;
    }

    // Function to get the value (amount of ether) sent in the current transaction
    function getValue() external view returns (uint256) {
        return msg.value;
    }
}
