pragma solidity ^0.4.8;

import 'zeppelin/token/StandardToken.sol';              // ERC20 Standard Token interface
import 'zeppelin/ownership/Ownable.sol';                // Token owned by a MultiSig Wallet

/// @title Link Token. This Token will remain the cornerstone of the entire organization. It will have an Ethereum address and from the moment that address is publish until the end, it will remain the same, and should. The Token should be as simple as it possibly can be and should not be able to terminate. It's state remains so that those who control their Tokens will continue to do so.
/// @author Riaan F Venter~ RFVenter~ <msg@rfv.io>
contract LinkToken is StandardToken, Ownable {

    string public   name =           "Link Platform";    // Name of the Token
    string public   symbol =         "LNK";              // ERC20 compliant Token code
    uint public     decimals =       18;                 // Token has 18 digit precision
    uint public     totalSupply;    			         // Total supply

    function mint(address _spender, uint _value)
        onlyOwner {

        balances[_spender] += _value;
        totalSupply += _value;
    }
}