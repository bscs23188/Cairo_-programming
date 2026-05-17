# Dispatcher in Cairo Programming

## Introduction

Dispatcher is an important concept in Cairo and Starknet smart contract development. It allows one smart contract to communicate and interact with another smart contract.

In blockchain development, contracts often need to call functions from other contracts. Dispatchers make this interaction possible in a secure and organized way.

This assignment demonstrates how a Calculator Contract can be called using a Dispatcher Contract.

---

# What is Cairo?

Cairo is a programming language used to write provable programs and smart contracts on Starknet.

Starknet is a Layer 2 scaling solution for Ethereum that uses Zero-Knowledge Rollups (ZK-Rollups) to improve scalability and reduce transaction costs.

Cairo allows developers to create decentralized applications (dApps) and smart contracts efficiently.

---

# What is a Smart Contract?

A smart contract is a program stored on the blockchain that automatically executes when specific conditions are met.

Smart contracts are:
- Decentralized
- Transparent
- Secure
- Immutable

They are commonly used in:
- DeFi applications
- NFT marketplaces
- Gaming
- Voting systems
- Payment systems

---

# What is a Dispatcher?

A Dispatcher in Cairo is a special mechanism used to interact with another deployed smart contract.

It acts like a bridge or remote control between contracts.

Using a dispatcher:
- One contract can call functions from another contract
- Contracts can share functionality
- Developers can build modular applications

---

# Why Dispatchers are Important

Dispatchers are important because modern decentralized applications contain multiple contracts that work together.

Benefits include:
- Reusability of code
- Better modularity
- Easier maintenance
- Secure communication between contracts
- Separation of logic

---

# Interface in Cairo

Before using a dispatcher, an interface is created.

An interface defines:
- Function names
- Parameters
- Return types

It does not contain implementation logic.

Example:

```rust
#[starknet::interface]
trait ICalculator<TContractState> {
    fn add(self: @TContractState, a: u32, b: u32) -> u32;
}