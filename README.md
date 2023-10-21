# MyToken Solidity Smart Contract

This is a simple Solidity smart contract for creating a custom token called "MyToken." The contract allows for the minting (creation) and burning (destruction) of tokens, and it includes basic information about the token.


## Token Information

The contract defines the following public variables:

- `_tokenName`: A string representing the name of the token, set to "Pankaj".
- `_tokenAbbrv`: A string representing the abbreviation of the token, set to "Sharma".
- `_totalSupply`: An unsigned integer representing the total supply of the token, initially set to 0.

## Token Balances

The contract uses a mapping to keep track of token balances for different addresses. The mapping is defined as follows:

```solidity
mapping(address => uint) public bal;
```


## Functions

1. `mint(address Addr, uint Value)`: This function allows the minting (creation) of new tokens and assigns them to a specified address. It increases the total supply (`_totalSupply`) and updates the balance in the `bal` mapping for the specified address.

2. `burn(address Addr, uint Value)`: This function allows for the burning (destruction) of tokens from a specified address. It checks if the address has a sufficient balance to burn the specified number of tokens and then updates the total supply and balance accordingly.

