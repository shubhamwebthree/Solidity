// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract fineToken is ERC20 {
    constructor (uint256 initialSupply) ERC20("Finite","FINE"){
        _mint(msg.sender,initialSupply);
    }
}
    