// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public _tokenName = "Pankaj";
    string public _tokenAbbrv = "Sharma";
    uint public _totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public bal;

    // mint function
    function mint(address Addr, uint Value) public {
        _totalSupply += Value;
        bal[Addr] += Value;
    }

    // burn function
    function burn(address Addr, uint Value) public {
        if(bal[Addr] >= Value) {
            _totalSupply -= Value;
            bal[Addr] -= Value;
    }
    }
}
