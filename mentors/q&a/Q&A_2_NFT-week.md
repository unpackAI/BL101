# General 🎲  
# Coursebook 📗   
# Workbook 👨‍💻  

### We built three types of NFTs: *on-chain*, *off-chain*, *collectible*. Can you explain again the difference? 
>It makes sense to distinguish between the NFT itself (a `solidity` smart contract with a specific contract address) and the asset the NFT refers to (a picture, a peace of art, a character in a game, etc.)
- off-chain NFTs: the asset is stored outside the blockchain. In our **Assignment 1a** our image was stored on `imgur.com` and only the link to our metadata with our image url was stored inside our NFT contract.  
- on-chain NFTs: the image is stored inside the NFT. We can distinguish between:   
    1. the image is completely stored 
    2. asdffadf


### Is there a size limit for smart contracts?
- yes, 24576 bytes! (👉🏻 see also: [Why is there a limit?](https://ethereum.org/en/developers/tutorials/downsizing-contracts-to-fight-the-contract-size-limit/#why-is-there-a-limit)).



>### Can I also mint a video?
Sure, but you would not include the video in your NFT (file size!). Instead you would provide a link to that video like we did in Assignment 1a.

>### Why did we use `svg` file format in Assignment 1b? It looks more difficult than `jpg`. 
`Svg` are i 
You could for example store a basic vector image on the blockchain and then import it 
(👉🏻 see also: [Why SVG is important for NFTs](https://www.cartarl.com/blog/why-svg-is-important-for-nfts/))

>### I think I understand that we can include simple vector graphics inside our NFT (on-chain), but most pixel images must be stored outside the NFT (because of file size). How are these images than protected?  
They are not! At least not how we did it in Assignment 1a. In reality - and this is how most NFT marketplaces work -  you would chain your image via `IPFS` to your NFT.

>### What's all this hazzle with converting image and metadata and insert code into replit? Why not just create an NFT on opensea?
Sure. You can simply create your NFT on OpenSea. You just need to open an account and provide the metadata and upload your image. No coding required!  

But the takeaway in this week was to understand what happens behind the scene. You created an NFT and deployed it to the blockchain from scratch and by your own. This should give you at least a better understanding of what you can do with NFTs (and what not).

>#### I find these many files and folders in replit confusing. Can you the explain the different files in more detail?

    It's a common problem in coding when working with frameworks: at the beginning one is easily overwhelmed by the complexity of the code. The trick is to find out which are the essential parts of the code. In most cases, only a small fraction is needed for your code. By creating the replit, we were actually thinking about simplifying the code and use only 2-3 files. But then we decided to leave the framework structure as this shows you better the reality of blockchain develoment. 

>#### You mentioned framework - what's that?

>#### What happens when I press `run` in replit?


