/*For this challenge, write a smart contract that uses view, pure, and payable functions. 
Ensure that the functions are accessible within the contract and derived contracts as well. */

// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract SmartContract {
    uint public contractValue;
    
    // View function: Does not modify the state, can read from the state.
    function getContractValue() public view returns (uint) {
        return contractValue;
    }
    
    // Pure function: Does not modify or read from the state, only performs computations.
    function addNumbers(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    
    // Payable function: Can receive ether (msg.value) and modify the state.
    function setValue() public payable {
        contractValue = msg.value;
    }

// Derived Contract
contract DerivedContract is SmartContract {
    // We can call the view function from the base contract.
    function getValueFromBaseContract() public view returns (uint) {
        return getContractValue();
    }
    
    // We can call the pure function from the base contract.
    function addNumbersDirectly(uint a, uint b) public pure returns (uint) {
        return addNumbers(a, b);
    }
    
    // We can call the payable function from the base contract and send some ether.
    function setValueDirectly() public payable {
        setValue();
    }
}
}
