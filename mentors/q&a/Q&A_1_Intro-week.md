# Coursebook 📗

>### What is the difference between testnet and mainnet?
**Mainnet** is just another term for the *real* blockchain. **Testnet** is a simulation of the mainnet. It behaves like the real blockchain and looks identically (also not all services are available). Blockchain developer can test their code on the testnet without paying gas.

---




> ### Is there a size limit for smart contracts?
- yes, 24576 bytes! (👉🏻 see also: [Why is there a limit?](https://ethereum.org/en/developers/tutorials/downsizing-contracts-to-fight-the-contract-size-limit/#why-is-there-a-limit)).



>### Why are there different ERC standards?
First of all, it's always good to have an industry standard on which everybody can agree on, right?  
So imagine, you want to build your own NFT platform. (An NFT platform is like an ebuy for buying and selling NFTs.) How do you know which smart contracts are NFTs and which are not? And where in that smart contract do you find which information? Where is the metadata? Where is the link to the image? How can you transfer the NFT? etc. An ERC standards tells you all this by defining functions with variables for your smart contract. 
Of course you can write any smart contract without using any standards. But as engineers we don't want to reinvent the wheel. Why not use code from which we know it works and is secure? 
Another aspect is, that by using standards you can import most part of the code into your solditiy code and save gas. 