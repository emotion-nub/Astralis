# Astralis

## Brief Overview
Astralis is a tool for inspecting Base Sepolia network data, verifying RPC connectivity, block status, wallet balances, and contract bytecode presence. It helps developers validate contract deployments without making transactions.

Built for Base.

## What Astralis Does
- Performs a JSON-RPC health check (`eth_chainId`)
- Reads wallet balances (if available)
- Fetches the latest block, timestamp, and gas price
- Verifies bytecode presence at specified contract addresses
- Outputs easily accessible explorer links for further review

## What Astralis Never Does
- It does not send transactions
- It does not sign messages
- It does not alter onchain state

## Workflow Overview
1) Initialize Base Sepolia constants (RPC, explorer)  
2) Perform an `eth_chainId` RPC check to ensure connectivity  
3) Discover wallet addresses via Coinbase Wallet SDK  
4) If addresses are found, read and display balances  
5) Fetch the latest block and gas price  
6) Check bytecode presence at target contract addresses  
7) Output results with explorer links for review  

## Base Sepolia Details
- Network: Base Sepolia  
- chainId (decimal): 84532  
- Explorer: https://sepolia.basescan.org  

## Structure
- README.md  
- app/Astralis.mjs  
- package.json  
- contracts/TokenManagement.sol  
- contracts/TransactionVerifier.sol  
- config/base-sepolia.json  
- samples/targets.json  

## Author Contacts
- GitHub: https://github.com/emotion-nub

- Email: emotion.nub.0o@icloud.com

## License
Apache License 2.0

## Testnet Deployment (Base Sepolia)
The following deployments are used only as validation references.

network: base sepolia  
chainId (decimal): 84532  
explorer: https://sepolia.basescan.org  

TokenManagement.sol address:  
0xA5fF3E5051f2BbE12F735a8D0aEEfcBC93b9F1A9  

Deployment and verification:
- https://sepolia.basescan.org/address/0xA5fF3E5051f2BbE12F735a8D0aEEfcBC93b9F1A9
- https://sepolia.basescan.org/0xA5fF3E5051f2BbE12F735a8D0aEEfcBC93b9F1A9/0#code  

TransactionVerifier.sol address:  
0xB15fDCfF9F3A2c83b2b381c31c84bD901aB289C5  

Deployment and verification:
- https://sepolia.basescan.org/address/0xB15fDCfF9F3A2c83b2b381c31c84bD901aB289C5
- https://sepolia.basescan.org/0xB15fDCfF9F3A2c83b2b381c31c84bD901aB289C5/0#code  

These deployments provide a controlled environment for validating base tooling and read-only onchain access prior to base mainnet usage.
