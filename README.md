# smart_contract
## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has
the following functions :-

(1) Contract successfully uses require() statement.

(2) Contract successfully uses assert() statement.

(3) Contract successfully uses revert() statement.


### Functionalities

(1) require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.

(2) assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message.

(3) revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. 
    However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes made to the state, and things return to the initial state or the 
    state before the function call was made.

   ## Getting Started
   ## Prerequisites

To interact with this contract, you need:

- [Remix IDE](https://remix.ethereum.org/)
- A web3-enabled browser or extension (e.g., MetaMask) for deploying to a test network or mainnet.

## Deploying the Contract

1. **Open Remix**: Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**:
   - Click on the "+" icon in the left-hand sidebar.
   - Save the file with a `.sol` extension (e.g., `SmartContract.sol`).

3. **Copy and Paste the Code**:
   - Copy the provided Solidity code and paste it into the new file in Remix.
  ```solidity
     // SPDX-License-Identifier: MIT
     pragma solidity 0.8.18;

    contract smartcontract {
    uint public x;

    constructor() {
        x = 0;
    }

    function increment() public {
        require(x < 10, "x must be less than 10");
        x += 1;
        assert(x > 0);
    }

    function decrement() public {
        require(x > 0, "x must be greater than 0");
        x -= 1;
        assert(x >= 0);
    }

    function setX(uint _x) public {
        require(_x >= 0, "x must be non-negative");
        x = _x;
        assert(x >= 0);
    }

    function fail() public pure {
        revert("This function always reverts");
    }
}
  ```

4. **Compile the Code**:
   - Click on the "Solidity Compiler" tab in the left-hand sidebar.
   - Ensure the "Compiler" option is set to the latest version (0.8.x).
   - Click "Compile" to compile the contract.

5. **Deploy the Contract**:
   - Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
   - Select the `SimpleContract` contract from the dropdown menu.
   - Click "Deploy" to deploy the contract.

## Interacting with the Contract

1. **Increment `x`**:
   - Call the `increment()` function.
   - Ensure `x` is less than 10 before calling.

2. **Decrement `x`**:
   - Call the `decrement()` function.
   - Ensure `x` is greater than 0 before calling.

3. **Set `x`**:
   - Call the `setX(uint _x)` function with a non-negative value.

4. **Fail Function**:
   - Call the `fail()` function to see the revert behavior.
     
  ## Author

Bharat bhushan

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
