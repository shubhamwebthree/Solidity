// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "contracts/Oops/Math.sol";

contract usingMath{
    function add(uint a, uint b) public pure returns(uint){
        return Math.addition(a,b);
    }
}