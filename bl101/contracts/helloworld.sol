pragma solidity ^0.8.12;

contract HelloWorld {

string message = "Hello World from Shanghai";

    function read_message() public view returns (string memory) {
        return message;
    }

    function write_message(string calldata updated_message) public {
        message = updated_message;
    }

}