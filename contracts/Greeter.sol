pragma solidity ^0.8.0;

import "../client/node_modules/openzeppelin-solidity/contracts/access/Ownable.sol";

contract Greeter is Ownable {

  string private _greeting = "Hello World!";
  address private _owner;

  function greet() external view returns(string memory) {
    return _greeting;
  }

  function setGreeting(string calldata greeting) external onlyOwner {
    _greeting = greeting;
  }
}
