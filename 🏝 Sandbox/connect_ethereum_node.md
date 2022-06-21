## Connect to Ethereum Node

1. Got to [infura](https://infura.io) and open a free account
2. Create a new `Ethereum` project 
3. Choose `Mainnet` endpoint and copy the endpoint url. Additionally, also copy the url of some testnets, like `Rinkeby` or `Kovan` and add all endpoints in the code snippet below.

![](https://github.com/dirkkalmbach/bl101/blob/main/bl101/images/Infura.png?raw=true)

If you want to use your own infura node and NOT the node that we provided, you can follow the steps below.

1. Add your own https endpoint: `infura_url_rinkeby = "ADD_HTTPS_ENDPOINT_HERE"` within the notebook that you are working in.
2. If you also want to prepare your endpoints for kovan (an alternative to rinkeby) or the ethereum mainnet you can do that by simply adding the following code: `infura_url_mainnet = 'ADD YOUR OWN MAINNET HTTPS ENDPOINT'` and `infura_url_testnet_kovan = 'ADD YOUR OWN  KOVAN HTTPS ENDPOINT'`
3. Choose which blockchain you want to use by stating `provider = infura_url_testnet_rinkeby` or `provider = infura_url_mainnet` or `provider = infura_url_testnet_kovan`
4. Check connectivity by adding the following code `w3 = Web3(Web3.HTTPProvider(provider))` and `w3.isConnected()`