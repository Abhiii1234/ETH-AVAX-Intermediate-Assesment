// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    
    uint256 public balance;
    
    // Function to demonstrate 'require' statement
    function requireBalance(uint256 amount) public {
        // Require that the deposit amount is greater than or equal to 10
        require(amount >= 10, "required amount must be at least 10.");
        balance -= amount;
    }
    
    // Function to demonstrate 'assert' statement
    function assertBalance(uint256 amount) public {
        // Assert that the balance is always greater than or equal to 0
        assert(amount >= 0);
        balance = amount;
    }
    
    // Function to demonstrate 'revert' statement
    function revertBalance(uint256 amount) public {
        // Check if the withdrawal amount is valid
        if (amount > balance) {
            revert("Insufficient balance for withdrawal.");
        }
        balance += amount;
    }
}
