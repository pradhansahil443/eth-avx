# Error handling

In this project we get quick overview of solidity Error Handling. 

## Description

This project aims to develop a smart contract that implements the require(), assert(), and revert() statements. Error handling is crucial in smart contract development to ensure proper validation and handling of unexpected scenarios. By incorporating these statements, the smart contract will be able to handle various error conditions effectively and securely

## Getting Started

### Installing

To access the smart contract project, just copy the below code in your bash terminal of you gitpod or visual code.
```
git clone https://github.com/pradhansahil443/eth-avx.git
```

### Executing program

Ensure you have a development environment set up with an Ethereum-compatible blockchain and a compatible wallet like MetaMask.

    Compile the smart contract using your preferred Solidity compiler.
    Deploy the compiled contract to your local or testnet Ethereum network.
    Interact with the contract using the appropriate function calls.
    
For example, you can interact with the smart contract using web3.js or ethers.js library and your Ethereum wallet.

```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract DivideContract{
    function divide(uint a, uint b) external pure returns(uint){
        require( b!= 0, "Cannot divided by 0");

        uint result = a/b;

        assert(a == b * result + (a%b));    

        return result;
    }
    function trigger() external{
        revert("this function trigger revert");
    }
}

```

## Help

If you encounter any issues while using the smart contract, refer to the following resources for assistance:

    1. Check the project's documentation for comprehensive guidance on error handling practices and smart contract usage.
    2. If you have specific error messages or issues, search for them on the project's issue tracker or forums to see if others have encountered and resolved similar problems.

For more urgent or critical problems, you can reach out to the project maintainers or contributors for personalized support.

## Authors

This project is contributed by: Sahil Pradhan

