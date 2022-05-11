pragma solidity ^0.8.12;

contract HelloWorld {

string s = "Hello World from Shanghai";

  function read_message() public view returns (string memory) {
      return s;
      }

function write_message(string calldata t) public {
        s = t;
    }

}