## Assignment: Building a Simple On-Chain Blog Platform with Ethereum Attestation Service (EAS), IPFS, and HatsProtocol

### My Project Index

1. Project Introduction
2. Technology Used
3. Project Layout
4. Task
5. Summary

**Introdunction** :- Basic Blog Appliction build up, for Author and Readers., Where creative aurthors are making blogs and posted in the Web3 App.on contrary, Readers can read their blogs.

**Technology Used**:- Sepolia Testnet, Foundry, (Hats Protocol, Ethereum Attestation Service,IPFS)

## **Project Task**

# Assignment Tasks

1. **Setup Ethereum Environment**
   ● Install and configure an Ethereum development environment (e.g., Ganache, Truffle).
   ● Deploy smart contracts for the Ethereum Attestation Service (EAS) that will be used to attest to the authenticity of blog posts.
2. **Integrate IPFS**
   ● Set up an IPFS node or use a public IPFS gateway for decentralized storage.
   ● Implement functions to upload and retrieve blog content (text, images) using IPFS.
3. Implement HatsProtocol
   ● Integrate HatsProtocol for user authentication and access control.
   ● Define user roles (e.g., admin, author, reader) and permissions (e.g., publish blog post, read blog post).
4. **Build Frontend Interface**
   ● Develop a basic frontend interface.
   ● Create forms for users to log in, register, publish blog posts, and read blog posts.
5. **Connect Backend with Frontend**
   ● Use web3.js or a similar library to connect the Ethereum smart contracts with the frontend interface.
   ● Implement functions to interact with EAS for attesting blog posts and verifying their authenticity.
6. **Testing and Deployment**
   ● Test the functionality of your on-chain blog platform by creating test accounts, publishing blog posts, and verifying their authenticity.
   ● Deploy your application on a test network (e.g., Rinkeby, Ropsten) for further testing and demonstration.

# **Summary**

I created a backend concept in solidity contract. Alongwith testCases in Foundry language.
Even through i also make a EAS Schema for testing in onchain attestation. Also, little learn about Hats Protocol and make one tree.

# Sepolia Address :-0x8c62C4859f1b5E7e4a7B76e1459A7313e718a3dC

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/
