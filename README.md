# ETH + AVAX PROOF: Intermediate EVM Course

This Solidity program is a simple "Error Handling" program that demonstrates basic error handling mechanisms using `require`, `assert`, and `revert` statements. The contract showcases how to handle errors effectively in smart contracts.

## Description

This project features a Solidity smart contract called `FunctionErrors`, which illustrates error handling techniques using different statements. Solidity is a programming language primarily used for developing smart contracts on blockchain platforms like Ethereum.

The contract includes three functions:

- `requireCondition`: This function verifies if a voter meets the minimum age requirement for voting. It uses the `require` statement to ensure that the voter's age is greater than or equal to 18. If the condition is not met, the transaction reverts with an error message.

- `assertCondition`: This function checks if a user's age is above a legal threshold. It uses the `assert` statement to ensure that the user's age is greater than or equal to 21. If the condition is not met, the transaction stops and consumes all gas sent with the transaction.

- `revertCondition`: This function checks if there is sufficient balance for a transaction. If the withdrawal amount exceeds the account balance, the transaction reverts with an error message.

This contract serves as an educational tool for developers learning Solidity by providing practical examples of error handling in smart contracts. It can be used as a starting point for understanding how to handle various error conditions effectively in Solidity programming.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. Here's how to get started:

1. Go to the Remix website at [Remix](https://remix.ethereum.org/).

2. Create a new file and save it with a `.sol` extension (e.g., `FunctionErrors.sol`).

3. Copy and paste the provided Solidity code into the file.

4. Compile the code by clicking on the "Solidity Compiler" tab and then clicking on the "Compile FunctionErrors.sol" button.

5. Deploy the contract by clicking on the "Deploy & Run Transactions" tab. Select the `FunctionErrors` contract from the dropdown menu, and then click on the "Deploy" button.

```Solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract FunctionErrors {
    function requireCondition(uint _voterAge) 
    public pure returns (string memory){
        uint _minVotingAge = 18;
        require(_voterAge >= _minVotingAge, "Voter does not meet the minimum age requirement");
        return ("Voter meets the minimum age requirement and is eligible to vote");
    }
    
    function assertCondition(uint _userAge) 
    public pure returns (string memory){
        uint _minLegalAge = 21;
        assert(_userAge >= _minLegalAge);
        return("User's age is above the legal threshold");
    }
    
    function revertCondition(uint _amount) 
    public pure {
        uint _accountBalance = 1000;
        if (_amount > _accountBalance) {
            revert("Insufficient balance for the transaction");
        }
    }
}
```

Once the contract is deployed, you can interact with it by calling the various functions:

- `requireCondition`: Call this function with a voter's age to verify if they meet the minimum age requirement for voting.
- `assertCondition`: Call this function with a user's age to check if it meets the legal threshold.
- `revertCondition`: Call this function with a withdrawal amount to check if it exceeds the account balance.

## Authors
Abhigyan Pushkar

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
