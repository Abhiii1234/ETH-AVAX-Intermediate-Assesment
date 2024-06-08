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
