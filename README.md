# ETH + AVAX PROOF: Intermediate EVM Course

This Solidity program is a simple "Error Handling" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to understand how to handle errors effectively in smart contracts.

## Description
This project is a Solidity smart contract designed to showcase error handling mechanisms using `require`, `assert`, and `revert` statements. Solidity is a programming language primarily used for developing smart contracts on the Ethereum blockchain. The contract implemented in this project features three functions: `requireBalance`, `assertBalance`, and `revertBalance`. These functions demonstrate different error handling techniques:

- `requireBalance`: Ensures that the deposit amount is greater than a specified threshold (in this case, 10). If the condition is not met, the transaction reverts with an error message.

- `assertBalance`: Asserts that the amount passed to the function is greater than zero. If the assertion fails, the transaction stops and consumes all gas sent with the transaction.

- `revertBalance`: Checks if the withdrawal amount is valid based on the current balance. If the amount exceeds the balance, the transaction reverts with an error message.

This contract serves as an educational tool for developers learning Solidity by providing practical examples of error handling in smart contracts. It can be used as a starting point for understanding how to handle various error conditions effectively in Solidity programming.

## Getting Started

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `avalanche.sol`). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    
    uint256 public balance;
    
    // Function to demonstrate 'require' statement
    function requireBalance(uint256 amount) public {
        // Require that the deposit amount is greater than 10
        require(amount > 10, "Amount must be greater than 10.");
        balance += amount;
    }
    
    // Function to demonstrate 'assert' statement
    function assertBalance(uint256 amount) public {
        // Assert that the amount is always greater than 0
        assert(amount > 0);
        balance += amount;
    }
    
    // Function to demonstrate 'revert' statement
    function revertBalance(uint256 amount) public {
        // Check if the withdrawal amount is valid
        if (amount > balance) {
            revert("Insufficient balance for withdrawal.");
        }
        balance -= amount;
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (e.g., 0.8.0), and then click on the "Compile avalanche.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "avalanche" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the various functions:

requireBalance: Call this function with an amount greater than 10 to successfully update the balance.
assertBalance: Call this function with a positive amount to update the balance.
revertBalance: Call this function to withdraw an amount less than or equal to the current balance. If the amount exceeds the balance, the transaction will revert with an error message.

## Authors
Abhigyan Pushkar

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
