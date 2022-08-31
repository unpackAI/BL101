   
# General 🎲  
# Coursebook 📗   
# Workbook 👨‍💻  

---
>What is a *rug pull*?  

According to urban dictionary, a `rug pull` is *"when life suddenly pulls the rug metaphorically from your feet and your life suddenly changes with some sort of major loss that is unexpected"*: 
<center><img src="https://www.dropbox.com/s/n5otnj46zcfch34/rug-pull.gif?raw=1" alt="Paramater Settings in Liquidity Pool" width="200"/></center>   

🥜 **In a nutshell:** It's a type of scam involving cryptocurrency: a developer attracts investors to a new cryptocurrency project, then pulls out before the projectis built. This leaves the investors with a worthless currency.



----





## Workbook 👨‍💻
### Metamask 🦊  
>If I can restore my wallet from my `secret phase`, how can Metamask derrive my private key(s)?  

Great question! 👏 Indeed, Metamask only restores the first account: the one Metamask created automatically during setup. All other accounts can't be recovered from the secret phase - you need to add them manually again.

However, any additional accounts you create can be re-created in a future instance of MetaMask; as the wallet is deterministic, it will always re-create the same accounts, in the same order. 

Metamask is decentral, i.e. no private key or secret phrase is stored outside your wallet; only your account number(s) is/are stored on the blockchain. 

--- 

> ### I am still confused about the different *keys* in Metamask, and when to use which!
🥜 In a nutshell:  `wallet address` is your bank account number, `private key` is your password and the `secret phase` is an extra password for moving your wallet to another computer/phone/browser.  
People often name their wallet address `public key`, but in fact there are both different: the `wallet address` hat x digits, the `public key` has y digits. 

Some people call their `wallet address`: *account address* or *public address*.

---

> ### Where can I find my Metamask credentials?
- `wallet address`: front page on the top (it's either named **Account 1** or however you named it)
- `public key`: you barely need it
- `private key`: three dots right next to the `wallet address` -> then *Account Details* -> then *export private key*   
- `secret phrase`: you got it when you set up your wallet. If you lost it, there is no way to get it back. *(there is no way to derrive the `secret phrase` from your remaining Metamask credentials)*. In this case, you should soner or later setup a new wallet and transfer your funds to it. 

---  

> ### How do `private key`, `public key`, `wallet address` and `secret recovery phrase` work together?  

![Different keys in Metamask](https://www.dropbox.com/s/g9po8mc9qrirdso/Metamask_keys.png?raw=1)  

- the `wallet address` is also your identity in the blockchain world - its the only information beside your account balance (among your credentials) which is stored on the blockchain.
- some

> ### If the public key is my identity in the blockchain world, how come I only need the private key to sign transactions?
Because you can extract the `public key` out of any `private key` *(but not the other way around)*.   

    👉🏻 In our workbook is a code example!  

