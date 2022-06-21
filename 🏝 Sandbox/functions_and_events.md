# Functions and Events
## Functions in Solidity
Like in all coding languages functions help to write code easier by putting code snippets together in a block so we can reuse it.   

In solidity functions can read, write, change and store data in a smart contract. Functions can have input (arguments) and ouput (return) values. And they can call other functions.   
A typical example for a function would be:
```
function owner() public view returns(address) {
    return _owner;
}
```
This function simply returns whatever address is stored in the variable `_owner`. You can call it by simply `owner()`. It’s **public** which means that anyone can call it. Functions always start withe `function` keyword. They can have arguments (input values) and return values (output values). 
## Events ins Solidity
Events look like functions (the also have arguments) but they differ fundamentally: events store data in the **transfer log**. The main purpose is to let users or services know something happened.
Think of events like `console.log()` in **javascript**. 

An example for an **event** would be:
```
event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);   
```
This event lets you know that an ERC721 token was transfered from one user to another. It has 3 arguments: sender address, receiver address and token ID. 
(The `indexed` keyword helps to find the data inside the transactions log.)
If you call an event you need to use the `emit` keyword, e.g.:   
`emit Transfer(_from, _to, _tokenId)`
>**Fun Fact:** events where introduced in 2017 after a hacker stole 3.6 million Eth (or US-$60 million at that time) from a DAO, a sucessfull venture capital fund to be more specific. This was due to a wrong use of functions and events in that smart contract. As a consequence the Ethereum price dropped dramatically.