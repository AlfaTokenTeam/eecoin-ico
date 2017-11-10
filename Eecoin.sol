pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Eecoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Eecoin(address _owner)  UpgradeableToken(_owner) {
    name = "Eecoin";
    symbol = "MYT";
    totalSupply = 800000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}