# ethOnline2023

# Sav3r : Sav3r the Dapp that uses blockchain to combat food waste.
 The Dapp will allow users to stake their NFTs to buy buckets of food from waste. The value of the NFT will be the footsprint value of the saved food for waste. The value is the combination of the money the user saved and the kg of food they saved from waste. 1kg = 1USDC of food. 

# Who it works ? 

## Sav3r smart contract - Scroll & Ethereum : 
Deployed on Goerli testnet :

``` 
Deployed to: 0x45a5672fD91c7aaDFc69daF65bE16f20d555e2Be
Transaction hash: 0xb44bf3d07fc1f92334e66cb539071b51d036da509bf2dfcb15b1b0ca5fc41579
```

Deployed on Scroll Sepolia testnet : 
``` 
Deployer :0xBb9252526887C6caa5D049Fad4c384081e6295e4
Transaction hash: 0xb44bf3d07fc1f92334e66cb539071b51d036da509bf2dfcb15b1b0ca5fc41579
```

The smart contract in sav3r-smart-contract/src/Sav3rStacking.sol, allow to stake the ERC-20 from the ApeCoinStaking.sol smart contract. The user will be able to 

- Swap his USDC token for BAYC token 

- Stake his BAYC token in order to grab his token 

## Sav3r database - backend endle with TheGraph 

The Graph allow Sav3r to take the data from the store. Our database is store off-chain: it's the stores that have information of the bucket 

- money saved from waste food 

- weigh of food saved from waste : 1kg = 1USDC. 

The idea, is to bring off-chain data to on-chain data due to theGraph. 

## Sav3r notification system 

The client will be notified each time a new food bucket pop. 