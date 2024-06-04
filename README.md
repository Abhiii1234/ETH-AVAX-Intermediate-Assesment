# ETH + AVAX PROOF: Intermediate EVM Course

## Project Title
MyContract: Demonstrating Error Handling in Solidity

## Description
This Solidity program is designed to demonstrate the use of `require`, `assert`, and `revert` statements in the Solidity programming language. The purpose of this program is to help developers understand how to implement error handling mechanisms in their smart contracts. This contract allows users to deposit and withdraw amounts while ensuring that certain conditions are met to maintain the integrity of the contract's state.

## Getting Started

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `MyContract.sol`). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (e.g., 0.8.0), and then click on the "Compile MyContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyContract" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the various functions:

requireBalance: Call this function with an amount greater than 10 to successfully update the balance.
assertBalance: Call this function with a positive amount to update the balance.
revertBalance: Call this function to withdraw an amount less than or equal to the current balance. If the amount exceeds the balance, the transaction will revert with an error message.

## Authors
Abhigyan Pushkar

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
